# RubyEveesiClient::GetCorporationsCorporationIdStarbases200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moon_id** | **Integer** | The moon this starbase (POS) is anchored on, unanchored POSes do not have this information | [optional] |
| **onlined_since** | **Time** | When the POS onlined, for starbases (POSes) in online state | [optional] |
| **reinforced_until** | **Time** | When the POS will be out of reinforcement, for starbases (POSes) in reinforced state | [optional] |
| **starbase_id** | **Integer** | Unique ID for this starbase (POS) |  |
| **state** | **String** | state string | [optional] |
| **system_id** | **Integer** | The solar system this starbase (POS) is in, unanchored POSes have this information |  |
| **type_id** | **Integer** | Starbase (POS) type |  |
| **unanchor_at** | **Time** | When the POS started unanchoring, for starbases (POSes) in unanchoring state | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdStarbases200Ok.new(
  moon_id: null,
  onlined_since: null,
  reinforced_until: null,
  starbase_id: null,
  state: null,
  system_id: null,
  type_id: null,
  unanchor_at: null
)
```

