# RubyEveesiClient::GetFwStatsVictoryPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_week** | **Integer** | Last week&#39;s victory points gained |  |
| **total** | **Integer** | Total victory points gained since faction warfare began |  |
| **yesterday** | **Integer** | Yesterday&#39;s victory points gained |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFwStatsVictoryPoints.new(
  last_week: null,
  total: null,
  yesterday: null
)
```

