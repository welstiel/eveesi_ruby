# RubyEveesiClient::GetCorporationCorporationIdMiningExtractions200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_arrival_time** | **Time** | The time at which the chunk being extracted will arrive and can be fractured by the moon mining drill.  |  |
| **extraction_start_time** | **Time** | The time at which the current extraction was initiated.  |  |
| **moon_id** | **Integer** | moon_id integer |  |
| **natural_decay_time** | **Time** | The time at which the chunk being extracted will naturally fracture if it is not first fractured by the moon mining drill.  |  |
| **structure_id** | **Integer** | structure_id integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationCorporationIdMiningExtractions200Ok.new(
  chunk_arrival_time: null,
  extraction_start_time: null,
  moon_id: null,
  natural_decay_time: null,
  structure_id: null
)
```

