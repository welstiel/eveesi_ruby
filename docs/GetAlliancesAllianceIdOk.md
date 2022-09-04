# RubyEveesiClient::GetAlliancesAllianceIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creator_corporation_id** | **Integer** | ID of the corporation that created the alliance |  |
| **creator_id** | **Integer** | ID of the character that created the alliance |  |
| **date_founded** | **Time** | date_founded string |  |
| **executor_corporation_id** | **Integer** | the executor corporation ID, if this alliance is not closed | [optional] |
| **faction_id** | **Integer** | Faction ID this alliance is fighting for, if this alliance is enlisted in factional warfare | [optional] |
| **name** | **String** | the full name of the alliance |  |
| **ticker** | **String** | the short name of the alliance |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetAlliancesAllianceIdOk.new(
  creator_corporation_id: null,
  creator_id: null,
  date_founded: null,
  executor_corporation_id: null,
  faction_id: null,
  name: null,
  ticker: null
)
```

