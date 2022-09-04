# RubyEveesiClient::GetCharactersCharacterIdShipOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ship_item_id** | **Integer** | Item id&#39;s are unique to a ship and persist until it is repackaged. This value can be used to track repeated uses of a ship, or detect when a pilot changes into a different instance of the same ship type. |  |
| **ship_name** | **String** | ship_name string |  |
| **ship_type_id** | **Integer** | ship_type_id integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdShipOk.new(
  ship_item_id: null,
  ship_name: null,
  ship_type_id: null
)
```

