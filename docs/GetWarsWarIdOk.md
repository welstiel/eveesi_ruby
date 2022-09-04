# RubyEveesiClient::GetWarsWarIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggressor** | [**GetWarsWarIdAggressor**](GetWarsWarIdAggressor.md) |  |  |
| **allies** | [**Array&lt;GetWarsWarIdAlly&gt;**](GetWarsWarIdAlly.md) | allied corporations or alliances, each object contains either corporation_id or alliance_id | [optional] |
| **declared** | **Time** | Time that the war was declared |  |
| **defender** | [**GetWarsWarIdDefender**](GetWarsWarIdDefender.md) |  |  |
| **finished** | **Time** | Time the war ended and shooting was no longer allowed | [optional] |
| **id** | **Integer** | ID of the specified war |  |
| **mutual** | **Boolean** | Was the war declared mutual by both parties |  |
| **open_for_allies** | **Boolean** | Is the war currently open for allies or not |  |
| **retracted** | **Time** | Time the war was retracted but both sides could still shoot each other | [optional] |
| **started** | **Time** | Time when the war started and both sides could shoot each other | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetWarsWarIdOk.new(
  aggressor: null,
  allies: null,
  declared: null,
  defender: null,
  finished: null,
  id: null,
  mutual: null,
  open_for_allies: null,
  retracted: null,
  started: null
)
```

