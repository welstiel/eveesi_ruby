# RubyEveesiClient::PostCharactersCharacterIdFittingsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag** | **String** | Fitting location for the item. Entries placed in &#39;Invalid&#39; will be discarded. If this leaves the fitting with nothing, it will cause an error. |  |
| **quantity** | **Integer** | quantity integer |  |
| **type_id** | **Integer** | type_id integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::PostCharactersCharacterIdFittingsItem.new(
  flag: null,
  quantity: null,
  type_id: null
)
```

