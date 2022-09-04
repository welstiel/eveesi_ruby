# RubyEveesiClient::GetFleetsFleetIdMembers200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | character_id integer |  |
| **join_time** | **Time** | join_time string |  |
| **role** | **String** | Member’s role in fleet |  |
| **role_name** | **String** | Localized role names |  |
| **ship_type_id** | **Integer** | ship_type_id integer |  |
| **solar_system_id** | **Integer** | Solar system the member is located in |  |
| **squad_id** | **Integer** | ID of the squad the member is in. If not applicable, will be set to -1 |  |
| **station_id** | **Integer** | Station in which the member is docked in, if applicable | [optional] |
| **takes_fleet_warp** | **Boolean** | Whether the member take fleet warps |  |
| **wing_id** | **Integer** | ID of the wing the member is in. If not applicable, will be set to -1 |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFleetsFleetIdMembers200Ok.new(
  character_id: null,
  join_time: null,
  role: null,
  role_name: null,
  ship_type_id: null,
  solar_system_id: null,
  squad_id: null,
  station_id: null,
  takes_fleet_warp: null,
  wing_id: null
)
```

