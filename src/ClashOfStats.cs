using System;
using System.Net.Http;
using System.Net.Http.Headers;

namespace ClashOfStatsApi
{
    public class ClashOfStats
    {
        private readonly HttpClient httpClient;
        private readonly string apiUrl = "https://api.clashofstats.com";
        public ClashOfStats()
        {
            httpClient = new HttpClient();
            httpClient.DefaultRequestHeaders.TryAddWithoutValidation("User-Agent", "Dart/2.18 (dart:io)");
            httpClient.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }
     
        public async Task<string> GetPlayersTrophies(string location = "global", int level = 0, int page = 0)
        {
            var response = await httpClient.GetAsync($"{apiUrl}/rankings/players/trophies?location={location}&level={level}&page={page}");
            return await response.Content.ReadAsStringAsync();
        }

        public async Task<string> GetPlayersWarStars(string location = "global", int level = 0, int page = 0)
        {
            var response = await httpClient.GetAsync($"{apiUrl}/rankings/players/war-stars?location={location}&level={level}&page={page}");
            return await response.Content.ReadAsStringAsync();
        }

        public async Task<string> GetPlayersAttackWins(string location = "global", int level = 0, int page = 0)
        {
            var response = await httpClient.GetAsync($"{apiUrl}/rankings/players/attack-wins?location={location}&level={level}&page={page}");
            return await response.Content.ReadAsStringAsync();
        }

        public async Task<string> GetPlayersExpLevels(string location = "global", int level = 0, int page = 0)
        {
            var response = await httpClient.GetAsync($"{apiUrl}/rankings/players/exp-level?location={location}&level={level}&page={page}");
            return await response.Content.ReadAsStringAsync();
        }

        public async Task<string> GetPlayersGoldContribution(string location = "global", int level = 0, int page = 0)
        {
            var response = await httpClient.GetAsync($"{apiUrl}/rankings/players/capital-gold-contribution?location={location}&level={level}&page={page}");
            return await response.Content.ReadAsStringAsync();
        }

        public async Task<string> GetClansTrophies(string location = "global", int page = 0)
        {
            var response = await httpClient.GetAsync($"{apiUrl}/rankings/clans/trophies?location={location}&page={page}");
            return await response.Content.ReadAsStringAsync();
        }
    }
}
