# RubyEveesiClient::GetFwLeaderboardsCharactersKills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;GetFwLeaderboardsCharactersActiveTotalActiveTotal&gt;**](GetFwLeaderboardsCharactersActiveTotalActiveTotal.md) | Top 100 ranking of pilots active in faction warfare by total kills. A pilot is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;GetFwLeaderboardsCharactersLastWeekLastWeek&gt;**](GetFwLeaderboardsCharactersLastWeekLastWeek.md) | Top 100 ranking of pilots by kills in the past week |  |
| **yesterday** | [**Array&lt;GetFwLeaderboardsCharactersYesterdayYesterday&gt;**](GetFwLeaderboardsCharactersYesterdayYesterday.md) | Top 100 ranking of pilots by kills in the past day |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFwLeaderboardsCharactersKills.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

