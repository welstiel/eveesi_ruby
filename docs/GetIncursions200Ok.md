# RubyEveesiClient::GetIncursions200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constellation_id** | **Integer** | The constellation id in which this incursion takes place |  |
| **faction_id** | **Integer** | The attacking faction&#39;s id |  |
| **has_boss** | **Boolean** | Whether the final encounter has boss or not |  |
| **infested_solar_systems** | **Array&lt;Integer&gt;** | A list of infested solar system ids that are a part of this incursion |  |
| **influence** | **Float** | Influence of this incursion as a float from 0 to 1 |  |
| **staging_solar_system_id** | **Integer** | Staging solar system for this incursion |  |
| **state** | **String** | The state of this incursion |  |
| **type** | **String** | The type of this incursion |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetIncursions200Ok.new(
  constellation_id: null,
  faction_id: null,
  has_boss: null,
  infested_solar_systems: null,
  influence: null,
  staging_solar_system_id: null,
  state: null,
  type: null
)
```

