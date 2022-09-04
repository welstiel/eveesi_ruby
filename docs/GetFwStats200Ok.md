# RubyEveesiClient::GetFwStats200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **faction_id** | **Integer** | faction_id integer |  |
| **kills** | [**GetFwStatsKills**](GetFwStatsKills.md) |  |  |
| **pilots** | **Integer** | How many pilots fight for the given faction |  |
| **systems_controlled** | **Integer** | The number of solar systems controlled by the given faction |  |
| **victory_points** | [**GetFwStatsVictoryPoints**](GetFwStatsVictoryPoints.md) |  |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFwStats200Ok.new(
  faction_id: null,
  kills: null,
  pilots: null,
  systems_controlled: null,
  victory_points: null
)
```

