# RubyEveesiClient::GetUniverseStructuresStructureIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The full name of the structure |  |
| **owner_id** | **Integer** | The ID of the corporation who owns this particular structure |  |
| **position** | [**GetUniverseStructuresStructureIdPosition**](GetUniverseStructuresStructureIdPosition.md) |  | [optional] |
| **solar_system_id** | **Integer** | solar_system_id integer |  |
| **type_id** | **Integer** | type_id integer | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetUniverseStructuresStructureIdOk.new(
  name: null,
  owner_id: null,
  position: null,
  solar_system_id: null,
  type_id: null
)
```

