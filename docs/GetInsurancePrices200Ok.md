# RubyEveesiClient::GetInsurancePrices200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **levels** | [**Array&lt;GetInsurancePricesLevel&gt;**](GetInsurancePricesLevel.md) | A list of a available insurance levels for this ship type |  |
| **type_id** | **Integer** | type_id integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetInsurancePrices200Ok.new(
  levels: null,
  type_id: null
)
```

