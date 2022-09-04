# RubyEveesiClient::GetFwLeaderboardsVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;GetFwLeaderboardsActiveTotalActiveTotal1&gt;**](GetFwLeaderboardsActiveTotalActiveTotal1.md) | Top 4 ranking of factions active in faction warfare by total victory points. A faction is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;GetFwLeaderboardsLastWeekLastWeek1&gt;**](GetFwLeaderboardsLastWeekLastWeek1.md) | Top 4 ranking of factions by victory points in the past week |  |
| **yesterday** | [**Array&lt;GetFwLeaderboardsYesterdayYesterday1&gt;**](GetFwLeaderboardsYesterdayYesterday1.md) | Top 4 ranking of factions by victory points in the past day |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFwLeaderboardsVictoryPoints.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

