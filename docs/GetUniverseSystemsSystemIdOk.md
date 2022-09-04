# RubyEveesiClient::GetUniverseSystemsSystemIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constellation_id** | **Integer** | The constellation this solar system is in |  |
| **name** | **String** | name string |  |
| **planets** | [**Array&lt;GetUniverseSystemsSystemIdPlanet&gt;**](GetUniverseSystemsSystemIdPlanet.md) | planets array | [optional] |
| **position** | [**GetUniverseSystemsSystemIdPosition**](GetUniverseSystemsSystemIdPosition.md) |  |  |
| **security_class** | **String** | security_class string | [optional] |
| **security_status** | **Float** | security_status number |  |
| **star_id** | **Integer** | star_id integer | [optional] |
| **stargates** | **Array&lt;Integer&gt;** | stargates array | [optional] |
| **stations** | **Array&lt;Integer&gt;** | stations array | [optional] |
| **system_id** | **Integer** | system_id integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetUniverseSystemsSystemIdOk.new(
  constellation_id: null,
  name: null,
  planets: null,
  position: null,
  security_class: null,
  security_status: null,
  star_id: null,
  stargates: null,
  stations: null,
  system_id: null
)
```

