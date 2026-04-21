namespace NmePowershell
{
    using Runtime;
    using System;
    using System.Collections.Generic;
    using System.Globalization;
    using System.Net;
    using System.Net.Http;
    using System.Text;
    using System.Text.RegularExpressions;
    using System.Threading.Tasks;

    public static class UriExtensions
    {
        public static Uri PatchHost(this Uri baseUri, string newBase)
        {
            if (string.IsNullOrWhiteSpace(newBase))
            {
                return baseUri;
            }

            baseUri = baseUri ?? new Uri("/", UriKind.Relative);
            UriBuilder output = new UriBuilder(newBase);
            if (baseUri.IsAbsoluteUri)
            {
                output.Path = output.Uri.AppendPathRemoveDuplicates(baseUri.AbsolutePath);
                output.Query = baseUri.Query?.TrimStart('?');
                output.Fragment = baseUri.Fragment?.TrimStart('#');
                return output.Uri;
            }

            return new Uri(output.Uri, baseUri);
        }

        private static string AppendPathRemoveDuplicates(this Uri start, string end)
        {
            var startPath = start.AbsolutePath;
            var startRegex = new Regex($"(^{Regex.Escape(startPath)})");
            return string.Concat(startPath, startRegex.Replace(end, string.Empty, 1));
        }
    }

    public partial class Module
    {
        partial void CustomInit()
        {
            this._pipeline.Append(AddApiKey);

            this._pipelineWithProxy.Append(AddApiKey);
            
        }

        protected async Task<HttpResponseMessage> AddApiKey(HttpRequestMessage request, IEventListener callback, ISendAsync next)
        {
            var accessTokenBase64 = Environment.GetEnvironmentVariable("NmeAccessToken");
            var accessToken = accessTokenBase64 != null ? Encoding.UTF8.GetString(Convert.FromBase64String(accessTokenBase64)) : null;
            var envTokenCreationTime = Environment.GetEnvironmentVariable("NmeTokenCreationTime");
            var baseUri = Environment.GetEnvironmentVariable("NmeBaseUrl");

            var tokenCreationTime = envTokenCreationTime != null ? DateTime.ParseExact(envTokenCreationTime, "o", CultureInfo.InvariantCulture) : DateTime.MinValue;

            if (accessToken == null || DateTime.UtcNow - tokenCreationTime > TimeSpan.FromSeconds(3000))
            {
                var clientId = Environment.GetEnvironmentVariable("NmeClientId");
                var apiScope = Environment.GetEnvironmentVariable("NmeApiScope");
                var clientSecretBase64 = Environment.GetEnvironmentVariable("NmeClientSecret");
                var tenantId = Environment.GetEnvironmentVariable("NmeTenantId");
                var cloudEnvironment = Environment.GetEnvironmentVariable("NmeCloudEnvironment");

                var clientSecret = clientSecretBase64 != null ? Encoding.UTF8.GetString(Convert.FromBase64String(clientSecretBase64)) : null;

                if (clientId == null || apiScope == null || clientSecret == null || tenantId == null || cloudEnvironment == null)
                {
                    throw new Exception("Not authorized");
                }

                accessToken = await GetApiKey(clientId, apiScope, clientSecret, tenantId, cloudEnvironment);
            }

            request.Headers.Add("Authorization", $"Bearer {accessToken}");
            request.RequestUri = request.RequestUri.PatchHost(baseUri);

            return await next.SendAsync(request, callback);
        }

        private async Task<string> GetApiKey(string clientId, string apiScope, string clientSecret, string tenantId, string cloudEnvironment)
        {
            var baseUrl = "https://login.microsoftonline.com";
            if (cloudEnvironment == "AzureUSGovernment")
            {
                baseUrl = "https://login.microsoftonline.us";
            }

            using (var client = new HttpClient())
            {
                var httpRequestMessage = new HttpRequestMessage
                {
                    Method = HttpMethod.Post,
                    RequestUri =
                                new Uri(
                                    $"{baseUrl}/{tenantId}/oauth2/v2.0/token"),
                    Content = new FormUrlEncodedContent(new[]
                            {
                                new KeyValuePair<string, string>("grant_type", "client_credentials"),
                                new KeyValuePair<string, string>("scope", apiScope),
                                new KeyValuePair<string, string>("client_id", clientId),
                                new KeyValuePair<string, string>("client_secret", clientSecret),
                            })
                };

                var response = await client.SendAsync(httpRequestMessage);
                var json = await response.Content.ReadAsStringAsync();

                if (response.StatusCode != HttpStatusCode.OK)
                {
                    throw new Exception($"Error occurred during OAuth 2.0 token acquisition. Response body: {json}");
                }

                Regex regex = new Regex("\"access_token\":\"([^\"]+)\"");
                Match match = regex.Match(json);
                var token = match.Groups[1].Value;

                Environment.SetEnvironmentVariable("NmeAccessToken", Convert.ToBase64String(Encoding.UTF8.GetBytes(token)));
                Environment.SetEnvironmentVariable("NmeTokenCreationTime", DateTime.UtcNow.ToString("o"));

                return token;
            }
        }
    }
}