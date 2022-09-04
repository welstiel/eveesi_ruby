# RubyEveesiClient::GetCharactersCharacterIdFwStatsKills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_week** | **Integer** | Last week&#39;s total number of kills by a given character against enemy factions |  |
| **total** | **Integer** | Total number of kills by a given character against enemy factions since the character enlisted |  |
| **yesterday** | **Integer** | Yesterday&#39;s total number of kills by a given character against enemy factions |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdFwStatsKills.new(
  last_week: null,
  total: null,
  yesterday: null
)
```

