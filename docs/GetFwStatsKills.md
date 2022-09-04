# RubyEveesiClient::GetFwStatsKills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_week** | **Integer** | Last week&#39;s total number of kills against enemy factions |  |
| **total** | **Integer** | Total number of kills against enemy factions since faction warfare began |  |
| **yesterday** | **Integer** | Yesterday&#39;s total number of kills against enemy factions |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFwStatsKills.new(
  last_week: null,
  total: null,
  yesterday: null
)
```

