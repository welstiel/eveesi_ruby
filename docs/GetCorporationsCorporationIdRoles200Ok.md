# RubyEveesiClient::GetCorporationsCorporationIdRoles200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | character_id integer |  |
| **grantable_roles** | **Array&lt;String&gt;** | grantable_roles array | [optional] |
| **grantable_roles_at_base** | **Array&lt;String&gt;** | grantable_roles_at_base array | [optional] |
| **grantable_roles_at_hq** | **Array&lt;String&gt;** | grantable_roles_at_hq array | [optional] |
| **grantable_roles_at_other** | **Array&lt;String&gt;** | grantable_roles_at_other array | [optional] |
| **roles** | **Array&lt;String&gt;** | roles array | [optional] |
| **roles_at_base** | **Array&lt;String&gt;** | roles_at_base array | [optional] |
| **roles_at_hq** | **Array&lt;String&gt;** | roles_at_hq array | [optional] |
| **roles_at_other** | **Array&lt;String&gt;** | roles_at_other array | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdRoles200Ok.new(
  character_id: null,
  grantable_roles: null,
  grantable_roles_at_base: null,
  grantable_roles_at_hq: null,
  grantable_roles_at_other: null,
  roles: null,
  roles_at_base: null,
  roles_at_hq: null,
  roles_at_other: null
)
```

