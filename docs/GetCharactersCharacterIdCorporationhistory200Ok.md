# RubyEveesiClient::GetCharactersCharacterIdCorporationhistory200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | corporation_id integer |  |
| **is_deleted** | **Boolean** | True if the corporation has been deleted | [optional] |
| **record_id** | **Integer** | An incrementing ID that can be used to canonically establish order of records in cases where dates may be ambiguous |  |
| **start_date** | **Time** | start_date string |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdCorporationhistory200Ok.new(
  corporation_id: null,
  is_deleted: null,
  record_id: null,
  start_date: null
)
```

