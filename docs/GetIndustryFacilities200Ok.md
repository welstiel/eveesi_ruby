# RubyEveesiClient::GetIndustryFacilities200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **facility_id** | **Integer** | ID of the facility |  |
| **owner_id** | **Integer** | Owner of the facility |  |
| **region_id** | **Integer** | Region ID where the facility is |  |
| **solar_system_id** | **Integer** | Solar system ID where the facility is |  |
| **tax** | **Float** | Tax imposed by the facility | [optional] |
| **type_id** | **Integer** | Type ID of the facility |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetIndustryFacilities200Ok.new(
  facility_id: null,
  owner_id: null,
  region_id: null,
  solar_system_id: null,
  tax: null,
  type_id: null
)
```

