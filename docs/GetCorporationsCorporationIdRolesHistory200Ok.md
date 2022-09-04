# RubyEveesiClient::GetCorporationsCorporationIdRolesHistory200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changed_at** | **Time** | changed_at string |  |
| **character_id** | **Integer** | The character whose roles are changed |  |
| **issuer_id** | **Integer** | ID of the character who issued this change |  |
| **new_roles** | **Array&lt;String&gt;** | new_roles array |  |
| **old_roles** | **Array&lt;String&gt;** | old_roles array |  |
| **role_type** | **String** | role_type string |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdRolesHistory200Ok.new(
  changed_at: null,
  character_id: null,
  issuer_id: null,
  new_roles: null,
  old_roles: null,
  role_type: null
)
```

