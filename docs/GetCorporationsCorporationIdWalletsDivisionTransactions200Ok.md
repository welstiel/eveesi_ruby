# RubyEveesiClient::GetCorporationsCorporationIdWalletsDivisionTransactions200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **Integer** | client_id integer |  |
| **date** | **Time** | Date and time of transaction |  |
| **is_buy** | **Boolean** | is_buy boolean |  |
| **journal_ref_id** | **Integer** | -1 if there is no corresponding wallet journal entry |  |
| **location_id** | **Integer** | location_id integer |  |
| **quantity** | **Integer** | quantity integer |  |
| **transaction_id** | **Integer** | Unique transaction ID |  |
| **type_id** | **Integer** | type_id integer |  |
| **unit_price** | **Float** | Amount paid per unit |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdWalletsDivisionTransactions200Ok.new(
  client_id: null,
  date: null,
  is_buy: null,
  journal_ref_id: null,
  location_id: null,
  quantity: null,
  transaction_id: null,
  type_id: null,
  unit_price: null
)
```

