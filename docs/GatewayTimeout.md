# RubyEveesiClient::GatewayTimeout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Gateway timeout message |  |
| **timeout** | **Integer** | number of seconds the request was given | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GatewayTimeout.new(
  error: null,
  timeout: null
)
```

