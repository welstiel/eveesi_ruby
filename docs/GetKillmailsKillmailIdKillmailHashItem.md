# RubyEveesiClient::GetKillmailsKillmailIdKillmailHashItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flag** | **Integer** | Flag for the location of the item  |  |
| **item_type_id** | **Integer** | item_type_id integer |  |
| **items** | [**Array&lt;GetKillmailsKillmailIdKillmailHashItemsItem&gt;**](GetKillmailsKillmailIdKillmailHashItemsItem.md) | items array | [optional] |
| **quantity_destroyed** | **Integer** | How many of the item were destroyed if any  | [optional] |
| **quantity_dropped** | **Integer** | How many of the item were dropped if any  | [optional] |
| **singleton** | **Integer** | singleton integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetKillmailsKillmailIdKillmailHashItem.new(
  flag: null,
  item_type_id: null,
  items: null,
  quantity_destroyed: null,
  quantity_dropped: null,
  singleton: null
)
```

