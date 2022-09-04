# RubyEveesiClient::Forbidden

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Forbidden message |  |
| **sso_status** | **Integer** | status code received from SSO | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::Forbidden.new(
  error: null,
  sso_status: null
)
```

