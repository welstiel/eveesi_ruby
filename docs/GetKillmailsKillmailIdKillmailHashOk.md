# RubyEveesiClient::GetKillmailsKillmailIdKillmailHashOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attackers** | [**Array&lt;GetKillmailsKillmailIdKillmailHashAttacker&gt;**](GetKillmailsKillmailIdKillmailHashAttacker.md) | attackers array |  |
| **killmail_id** | **Integer** | ID of the killmail |  |
| **killmail_time** | **Time** | Time that the victim was killed and the killmail generated  |  |
| **moon_id** | **Integer** | Moon if the kill took place at one | [optional] |
| **solar_system_id** | **Integer** | Solar system that the kill took place in  |  |
| **victim** | [**GetKillmailsKillmailIdKillmailHashVictim**](GetKillmailsKillmailIdKillmailHashVictim.md) |  |  |
| **war_id** | **Integer** | War if the killmail is generated in relation to an official war  | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetKillmailsKillmailIdKillmailHashOk.new(
  attackers: null,
  killmail_id: null,
  killmail_time: null,
  moon_id: null,
  solar_system_id: null,
  victim: null,
  war_id: null
)
```

