# RubyEveesiClient::GetCharactersCharacterIdPlanetsPlanetIdPin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contents** | [**Array&lt;GetCharactersCharacterIdPlanetsPlanetIdContent&gt;**](GetCharactersCharacterIdPlanetsPlanetIdContent.md) | contents array | [optional] |
| **expiry_time** | **Time** | expiry_time string | [optional] |
| **extractor_details** | [**GetCharactersCharacterIdPlanetsPlanetIdExtractorDetails**](GetCharactersCharacterIdPlanetsPlanetIdExtractorDetails.md) |  | [optional] |
| **factory_details** | [**GetCharactersCharacterIdPlanetsPlanetIdFactoryDetails**](GetCharactersCharacterIdPlanetsPlanetIdFactoryDetails.md) |  | [optional] |
| **install_time** | **Time** | install_time string | [optional] |
| **last_cycle_start** | **Time** | last_cycle_start string | [optional] |
| **latitude** | **Float** | latitude number |  |
| **longitude** | **Float** | longitude number |  |
| **pin_id** | **Integer** | pin_id integer |  |
| **schematic_id** | **Integer** | schematic_id integer | [optional] |
| **type_id** | **Integer** | type_id integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdPlanetsPlanetIdPin.new(
  contents: null,
  expiry_time: null,
  extractor_details: null,
  factory_details: null,
  install_time: null,
  last_cycle_start: null,
  latitude: null,
  longitude: null,
  pin_id: null,
  schematic_id: null,
  type_id: null
)
```

