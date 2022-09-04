# RubyEveesiClient::GetWarsWarIdAlly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | Alliance ID if and only if this ally is an alliance | [optional] |
| **corporation_id** | **Integer** | Corporation ID if and only if this ally is a corporation | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetWarsWarIdAlly.new(
  alliance_id: null,
  corporation_id: null
)
```

