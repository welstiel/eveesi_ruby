# RubyEveesiClient::GetCharactersCharacterIdFatigueOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jump_fatigue_expire_date** | **Time** | Character&#39;s jump fatigue expiry | [optional] |
| **last_jump_date** | **Time** | Character&#39;s last jump activation | [optional] |
| **last_update_date** | **Time** | Character&#39;s last jump update | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdFatigueOk.new(
  jump_fatigue_expire_date: null,
  last_jump_date: null,
  last_update_date: null
)
```

