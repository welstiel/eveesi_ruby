# RubyEveesiClient::GetStatusOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **players** | **Integer** | Current online player count |  |
| **server_version** | **String** | Running version as string |  |
| **start_time** | **Time** | Server start timestamp |  |
| **vip** | **Boolean** | If the server is in VIP mode | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetStatusOk.new(
  players: null,
  server_version: null,
  start_time: null,
  vip: null
)
```

