# RubyEveesiClient::GetCorporationsCorporationIdContainersLogs200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | action string |  |
| **character_id** | **Integer** | ID of the character who performed the action. |  |
| **container_id** | **Integer** | ID of the container |  |
| **container_type_id** | **Integer** | Type ID of the container |  |
| **location_flag** | **String** | location_flag string |  |
| **location_id** | **Integer** | location_id integer |  |
| **logged_at** | **Time** | Timestamp when this log was created |  |
| **new_config_bitmask** | **Integer** | new_config_bitmask integer | [optional] |
| **old_config_bitmask** | **Integer** | old_config_bitmask integer | [optional] |
| **password_type** | **String** | Type of password set if action is of type SetPassword or EnterPassword | [optional] |
| **quantity** | **Integer** | Quantity of the item being acted upon | [optional] |
| **type_id** | **Integer** | Type ID of the item being acted upon | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdContainersLogs200Ok.new(
  action: null,
  character_id: null,
  container_id: null,
  container_type_id: null,
  location_flag: null,
  location_id: null,
  logged_at: null,
  new_config_bitmask: null,
  old_config_bitmask: null,
  password_type: null,
  quantity: null,
  type_id: null
)
```

