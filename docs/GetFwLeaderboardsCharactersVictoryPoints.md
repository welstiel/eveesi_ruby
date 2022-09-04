# RubyEveesiClient::GetFwLeaderboardsCharactersVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;GetFwLeaderboardsCharactersActiveTotalActiveTotal1&gt;**](GetFwLeaderboardsCharactersActiveTotalActiveTotal1.md) | Top 100 ranking of pilots active in faction warfare by total victory points. A pilot is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;GetFwLeaderboardsCharactersLastWeekLastWeek1&gt;**](GetFwLeaderboardsCharactersLastWeekLastWeek1.md) | Top 100 ranking of pilots by victory points in the past week |  |
| **yesterday** | [**Array&lt;GetFwLeaderboardsCharactersYesterdayYesterday1&gt;**](GetFwLeaderboardsCharactersYesterdayYesterday1.md) | Top 100 ranking of pilots by victory points in the past day |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFwLeaderboardsCharactersVictoryPoints.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

