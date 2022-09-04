# RubyEveesiClient::GetCorporationsCorporationIdFwStatsKills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_week** | **Integer** | Last week&#39;s total number of kills by members of the given corporation against enemy factions |  |
| **total** | **Integer** | Total number of kills by members of the given corporation against enemy factions since the corporation enlisted |  |
| **yesterday** | **Integer** | Yesterday&#39;s total number of kills by members of the given corporation against enemy factions |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdFwStatsKills.new(
  last_week: null,
  total: null,
  yesterday: null
)
```

