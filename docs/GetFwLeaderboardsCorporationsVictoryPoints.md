# RubyEveesiClient::GetFwLeaderboardsCorporationsVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_total** | [**Array&lt;GetFwLeaderboardsCorporationsActiveTotalActiveTotal1&gt;**](GetFwLeaderboardsCorporationsActiveTotalActiveTotal1.md) | Top 10 ranking of corporations active in faction warfare by total victory points. A corporation is considered \&quot;active\&quot; if they have participated in faction warfare in the past 14 days |  |
| **last_week** | [**Array&lt;GetFwLeaderboardsCorporationsLastWeekLastWeek1&gt;**](GetFwLeaderboardsCorporationsLastWeekLastWeek1.md) | Top 10 ranking of corporations by victory points in the past week |  |
| **yesterday** | [**Array&lt;GetFwLeaderboardsCorporationsYesterdayYesterday1&gt;**](GetFwLeaderboardsCorporationsYesterdayYesterday1.md) | Top 10 ranking of corporations by victory points in the past day |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFwLeaderboardsCorporationsVictoryPoints.new(
  active_total: null,
  last_week: null,
  yesterday: null
)
```

