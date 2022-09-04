# RubyEveesiClient::GetUniverseFactions200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | corporation_id integer | [optional] |
| **description** | **String** | description string |  |
| **faction_id** | **Integer** | faction_id integer |  |
| **is_unique** | **Boolean** | is_unique boolean |  |
| **militia_corporation_id** | **Integer** | militia_corporation_id integer | [optional] |
| **name** | **String** | name string |  |
| **size_factor** | **Float** | size_factor number |  |
| **solar_system_id** | **Integer** | solar_system_id integer | [optional] |
| **station_count** | **Integer** | station_count integer |  |
| **station_system_count** | **Integer** | station_system_count integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetUniverseFactions200Ok.new(
  corporation_id: null,
  description: null,
  faction_id: null,
  is_unique: null,
  militia_corporation_id: null,
  name: null,
  size_factor: null,
  solar_system_id: null,
  station_count: null,
  station_system_count: null
)
```

