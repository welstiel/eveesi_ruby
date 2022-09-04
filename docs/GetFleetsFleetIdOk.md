# RubyEveesiClient::GetFleetsFleetIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_free_move** | **Boolean** | Is free-move enabled |  |
| **is_registered** | **Boolean** | Does the fleet have an active fleet advertisement |  |
| **is_voice_enabled** | **Boolean** | Is EVE Voice enabled |  |
| **motd** | **String** | Fleet MOTD in CCP flavoured HTML |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetFleetsFleetIdOk.new(
  is_free_move: null,
  is_registered: null,
  is_voice_enabled: null,
  motd: null
)
```

