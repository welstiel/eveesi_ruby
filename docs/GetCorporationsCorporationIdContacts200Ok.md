# RubyEveesiClient::GetCorporationsCorporationIdContacts200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** | contact_id integer |  |
| **contact_type** | **String** | contact_type string |  |
| **is_watched** | **Boolean** | Whether this contact is being watched | [optional] |
| **label_ids** | **Array&lt;Integer&gt;** | label_ids array | [optional] |
| **standing** | **Float** | Standing of the contact |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdContacts200Ok.new(
  contact_id: null,
  contact_type: null,
  is_watched: null,
  label_ids: null,
  standing: null
)
```

