# RubyEveesiClient::GetMarketsRegionIdOrders200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration** | **Integer** | duration integer |  |
| **is_buy_order** | **Boolean** | is_buy_order boolean |  |
| **issued** | **Time** | issued string |  |
| **location_id** | **Integer** | location_id integer |  |
| **min_volume** | **Integer** | min_volume integer |  |
| **order_id** | **Integer** | order_id integer |  |
| **price** | **Float** | price number |  |
| **range** | **String** | range string |  |
| **system_id** | **Integer** | The solar system this order was placed |  |
| **type_id** | **Integer** | type_id integer |  |
| **volume_remain** | **Integer** | volume_remain integer |  |
| **volume_total** | **Integer** | volume_total integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetMarketsRegionIdOrders200Ok.new(
  duration: null,
  is_buy_order: null,
  issued: null,
  location_id: null,
  min_volume: null,
  order_id: null,
  price: null,
  range: null,
  system_id: null,
  type_id: null,
  volume_remain: null,
  volume_total: null
)
```

