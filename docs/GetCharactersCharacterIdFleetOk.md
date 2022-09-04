# RubyEveesiClient::GetCharactersCharacterIdFleetOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | The character&#39;s current fleet ID |  |
| **role** | **String** | Member’s role in fleet |  |
| **squad_id** | **Integer** | ID of the squad the member is in. If not applicable, will be set to -1 |  |
| **wing_id** | **Integer** | ID of the wing the member is in. If not applicable, will be set to -1 |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdFleetOk.new(
  fleet_id: null,
  role: null,
  squad_id: null,
  wing_id: null
)
```

