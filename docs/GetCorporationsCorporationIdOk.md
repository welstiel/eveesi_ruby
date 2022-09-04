# RubyEveesiClient::GetCorporationsCorporationIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | ID of the alliance that corporation is a member of, if any | [optional] |
| **ceo_id** | **Integer** | ceo_id integer |  |
| **creator_id** | **Integer** | creator_id integer |  |
| **date_founded** | **Time** | date_founded string | [optional] |
| **description** | **String** | description string | [optional] |
| **faction_id** | **Integer** | faction_id integer | [optional] |
| **home_station_id** | **Integer** | home_station_id integer | [optional] |
| **member_count** | **Integer** | member_count integer |  |
| **name** | **String** | the full name of the corporation |  |
| **shares** | **Integer** | shares integer | [optional] |
| **tax_rate** | **Float** | tax_rate number |  |
| **ticker** | **String** | the short name of the corporation |  |
| **url** | **String** | url string | [optional] |
| **war_eligible** | **Boolean** | war_eligible boolean | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdOk.new(
  alliance_id: null,
  ceo_id: null,
  creator_id: null,
  date_founded: null,
  description: null,
  faction_id: null,
  home_station_id: null,
  member_count: null,
  name: null,
  shares: null,
  tax_rate: null,
  ticker: null,
  url: null,
  war_eligible: null
)
```

