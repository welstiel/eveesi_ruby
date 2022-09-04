# RubyEveesiClient::GetCharactersCharacterIdPlanetsPlanetIdRoute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type_id** | **Integer** | content_type_id integer |  |
| **destination_pin_id** | **Integer** | destination_pin_id integer |  |
| **quantity** | **Float** | quantity number |  |
| **route_id** | **Integer** | route_id integer |  |
| **source_pin_id** | **Integer** | source_pin_id integer |  |
| **waypoints** | **Array&lt;Integer&gt;** | list of pin ID waypoints | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdPlanetsPlanetIdRoute.new(
  content_type_id: null,
  destination_pin_id: null,
  quantity: null,
  route_id: null,
  source_pin_id: null,
  waypoints: null
)
```

