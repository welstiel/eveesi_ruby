# RubyEveesiClient::GetCharactersCharacterIdOrders200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration** | **Integer** | Number of days for which order is valid (starting from the issued date). An order expires at time issued + duration |  |
| **escrow** | **Float** | For buy orders, the amount of ISK in escrow | [optional] |
| **is_buy_order** | **Boolean** | True if the order is a bid (buy) order | [optional] |
| **is_corporation** | **Boolean** | Signifies whether the buy/sell order was placed on behalf of a corporation. |  |
| **issued** | **Time** | Date and time when this order was issued |  |
| **location_id** | **Integer** | ID of the location where order was placed |  |
| **min_volume** | **Integer** | For buy orders, the minimum quantity that will be accepted in a matching sell order | [optional] |
| **order_id** | **Integer** | Unique order ID |  |
| **price** | **Float** | Cost per unit for this order |  |
| **range** | **String** | Valid order range, numbers are ranges in jumps |  |
| **region_id** | **Integer** | ID of the region where order was placed |  |
| **type_id** | **Integer** | The type ID of the item transacted in this order |  |
| **volume_remain** | **Integer** | Quantity of items still required or offered |  |
| **volume_total** | **Integer** | Quantity of items required or offered at time order was placed |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdOrders200Ok.new(
  duration: null,
  escrow: null,
  is_buy_order: null,
  is_corporation: null,
  issued: null,
  location_id: null,
  min_volume: null,
  order_id: null,
  price: null,
  range: null,
  region_id: null,
  type_id: null,
  volume_remain: null,
  volume_total: null
)
```

