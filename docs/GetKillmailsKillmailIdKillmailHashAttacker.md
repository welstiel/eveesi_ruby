# RubyEveesiClient::GetKillmailsKillmailIdKillmailHashAttacker

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | alliance_id integer | [optional] |
| **character_id** | **Integer** | character_id integer | [optional] |
| **corporation_id** | **Integer** | corporation_id integer | [optional] |
| **damage_done** | **Integer** | damage_done integer |  |
| **faction_id** | **Integer** | faction_id integer | [optional] |
| **final_blow** | **Boolean** | Was the attacker the one to achieve the final blow  |  |
| **security_status** | **Float** | Security status for the attacker  |  |
| **ship_type_id** | **Integer** | What ship was the attacker flying  | [optional] |
| **weapon_type_id** | **Integer** | What weapon was used by the attacker for the kill  | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetKillmailsKillmailIdKillmailHashAttacker.new(
  alliance_id: null,
  character_id: null,
  corporation_id: null,
  damage_done: null,
  faction_id: null,
  final_blow: null,
  security_status: null,
  ship_type_id: null,
  weapon_type_id: null
)
```

