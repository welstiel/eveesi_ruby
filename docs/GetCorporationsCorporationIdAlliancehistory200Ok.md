# RubyEveesiClient::GetCorporationsCorporationIdAlliancehistory200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | alliance_id integer | [optional] |
| **is_deleted** | **Boolean** | True if the alliance has been closed | [optional] |
| **record_id** | **Integer** | An incrementing ID that can be used to canonically establish order of records in cases where dates may be ambiguous |  |
| **start_date** | **Time** | start_date string |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdAlliancehistory200Ok.new(
  alliance_id: null,
  is_deleted: null,
  record_id: null,
  start_date: null
)
```

