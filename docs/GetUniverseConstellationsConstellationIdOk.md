# RubyEveesiClient::GetUniverseConstellationsConstellationIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constellation_id** | **Integer** | constellation_id integer |  |
| **name** | **String** | name string |  |
| **position** | [**GetUniverseConstellationsConstellationIdPosition**](GetUniverseConstellationsConstellationIdPosition.md) |  |  |
| **region_id** | **Integer** | The region this constellation is in |  |
| **systems** | **Array&lt;Integer&gt;** | systems array |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetUniverseConstellationsConstellationIdOk.new(
  constellation_id: null,
  name: null,
  position: null,
  region_id: null,
  systems: null
)
```

