# RubyEveesiClient::GetCharactersCharacterIdContractsContractIdItems200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_included** | **Boolean** | true if the contract issuer has submitted this item with the contract, false if the isser is asking for this item in the contract |  |
| **is_singleton** | **Boolean** | is_singleton boolean |  |
| **quantity** | **Integer** | Number of items in the stack |  |
| **raw_quantity** | **Integer** | -1 indicates that the item is a singleton (non-stackable). If the item happens to be a Blueprint, -1 is an Original and -2 is a Blueprint Copy | [optional] |
| **record_id** | **Integer** | Unique ID for the item |  |
| **type_id** | **Integer** | Type ID for item |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdContractsContractIdItems200Ok.new(
  is_included: null,
  is_singleton: null,
  quantity: null,
  raw_quantity: null,
  record_id: null,
  type_id: null
)
```

