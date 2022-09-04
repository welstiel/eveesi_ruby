# RubyEveesiClient::GetContractsPublicRegionId200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buyout** | **Float** | Buyout price (for Auctions only) | [optional] |
| **collateral** | **Float** | Collateral price (for Couriers only) | [optional] |
| **contract_id** | **Integer** | contract_id integer |  |
| **date_expired** | **Time** | Expiration date of the contract |  |
| **date_issued** | **Time** | Сreation date of the contract |  |
| **days_to_complete** | **Integer** | Number of days to perform the contract | [optional] |
| **end_location_id** | **Integer** | End location ID (for Couriers contract) | [optional] |
| **for_corporation** | **Boolean** | true if the contract was issued on behalf of the issuer&#39;s corporation | [optional] |
| **issuer_corporation_id** | **Integer** | Character&#39;s corporation ID for the issuer |  |
| **issuer_id** | **Integer** | Character ID for the issuer |  |
| **price** | **Float** | Price of contract (for ItemsExchange and Auctions) | [optional] |
| **reward** | **Float** | Remuneration for contract (for Couriers only) | [optional] |
| **start_location_id** | **Integer** | Start location ID (for Couriers contract) | [optional] |
| **title** | **String** | Title of the contract | [optional] |
| **type** | **String** | Type of the contract |  |
| **volume** | **Float** | Volume of items in the contract | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetContractsPublicRegionId200Ok.new(
  buyout: null,
  collateral: null,
  contract_id: null,
  date_expired: null,
  date_issued: null,
  days_to_complete: null,
  end_location_id: null,
  for_corporation: null,
  issuer_corporation_id: null,
  issuer_id: null,
  price: null,
  reward: null,
  start_location_id: null,
  title: null,
  type: null,
  volume: null
)
```

