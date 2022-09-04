# RubyEveesiClient::GetCharactersCharacterIdOnlineOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_login** | **Time** | Timestamp of the last login | [optional] |
| **last_logout** | **Time** | Timestamp of the last logout | [optional] |
| **logins** | **Integer** | Total number of times the character has logged in | [optional] |
| **online** | **Boolean** | If the character is online |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdOnlineOk.new(
  last_login: null,
  last_logout: null,
  logins: null,
  online: null
)
```

