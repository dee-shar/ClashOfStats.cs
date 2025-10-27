# ClashOfStats.cs
Mobile-API for [Clash of Stats](https://play.google.com/store/apps/details?id=com.clashofstats) which is Clash of Clan's number one application for statistics, rankings and history of Players and Clans

## Example
```cs
using ClashOfStatsApi;

namespace Application
{
    internal class Program
    {
        static async Task Main()
        {
            var api = new ClashOfStats();
            string playersTrophies = await api.GetPlayersTrophies();
            Console.WriteLine(playersTrophies);
        }
    }
}
```
