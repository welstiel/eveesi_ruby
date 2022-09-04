# RubyEveesiClient::GetWarsWarIdDefender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | Alliance ID if and only if the defender is an alliance | [optional] |
| **corporation_id** | **Integer** | Corporation ID if and only if the defender is a corporation | [optional] |
| **isk_destroyed** | **Float** | ISK value of ships the defender has killed |  |
| **ships_killed** | **Integer** | The number of ships the defender has killed |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetWarsWarIdDefender.new(
  alliance_id: null,
  corporation_id: null,
  isk_destroyed: null,
  ships_killed: null
)
```

