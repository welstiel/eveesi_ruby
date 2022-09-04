# RubyEveesiClient::GetCorporationsCorporationIdStructures200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | ID of the corporation that owns the structure |  |
| **fuel_expires** | **Time** | Date on which the structure will run out of fuel | [optional] |
| **name** | **String** | The structure name | [optional] |
| **next_reinforce_apply** | **Time** | The date and time when the structure&#39;s newly requested reinforcement times (e.g. next_reinforce_hour and next_reinforce_day) will take effect | [optional] |
| **next_reinforce_hour** | **Integer** | The requested change to reinforce_hour that will take effect at the time shown by next_reinforce_apply | [optional] |
| **profile_id** | **Integer** | The id of the ACL profile for this citadel |  |
| **reinforce_hour** | **Integer** | The hour of day that determines the four hour window when the structure will randomly exit its reinforcement periods and become vulnerable to attack against its armor and/or hull. The structure will become vulnerable at a random time that is +/- 2 hours centered on the value of this property | [optional] |
| **services** | [**Array&lt;GetCorporationsCorporationIdStructuresService&gt;**](GetCorporationsCorporationIdStructuresService.md) | Contains a list of service upgrades, and their state | [optional] |
| **state** | **String** | state string |  |
| **state_timer_end** | **Time** | Date at which the structure will move to it&#39;s next state | [optional] |
| **state_timer_start** | **Time** | Date at which the structure entered it&#39;s current state | [optional] |
| **structure_id** | **Integer** | The Item ID of the structure |  |
| **system_id** | **Integer** | The solar system the structure is in |  |
| **type_id** | **Integer** | The type id of the structure |  |
| **unanchors_at** | **Time** | Date at which the structure will unanchor | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCorporationsCorporationIdStructures200Ok.new(
  corporation_id: null,
  fuel_expires: null,
  name: null,
  next_reinforce_apply: null,
  next_reinforce_hour: null,
  profile_id: null,
  reinforce_hour: null,
  services: null,
  state: null,
  state_timer_end: null,
  state_timer_start: null,
  structure_id: null,
  system_id: null,
  type_id: null,
  unanchors_at: null
)
```

