# RubyEveesiClient::PutFleetsFleetIdNewSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_free_move** | **Boolean** | Should free-move be enabled in the fleet | [optional] |
| **motd** | **String** | New fleet MOTD in CCP flavoured HTML | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::PutFleetsFleetIdNewSettings.new(
  is_free_move: null,
  motd: null
)
```

