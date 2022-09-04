# RubyEveesiClient::GetKillmailsKillmailIdKillmailHashVictim

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | alliance_id integer | [optional] |
| **character_id** | **Integer** | character_id integer | [optional] |
| **corporation_id** | **Integer** | corporation_id integer | [optional] |
| **damage_taken** | **Integer** | How much total damage was taken by the victim  |  |
| **faction_id** | **Integer** | faction_id integer | [optional] |
| **items** | [**Array&lt;GetKillmailsKillmailIdKillmailHashItem&gt;**](GetKillmailsKillmailIdKillmailHashItem.md) | items array | [optional] |
| **position** | [**GetKillmailsKillmailIdKillmailHashPosition**](GetKillmailsKillmailIdKillmailHashPosition.md) |  | [optional] |
| **ship_type_id** | **Integer** | The ship that the victim was piloting and was destroyed  |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetKillmailsKillmailIdKillmailHashVictim.new(
  alliance_id: null,
  character_id: null,
  corporation_id: null,
  damage_taken: null,
  faction_id: null,
  items: null,
  position: null,
  ship_type_id: null
)
```

