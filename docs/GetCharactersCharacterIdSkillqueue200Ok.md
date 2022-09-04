# RubyEveesiClient::GetCharactersCharacterIdSkillqueue200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **finish_date** | **Time** | Date on which training of the skill will complete. Omitted if the skill queue is paused. | [optional] |
| **finished_level** | **Integer** | finished_level integer |  |
| **level_end_sp** | **Integer** | level_end_sp integer | [optional] |
| **level_start_sp** | **Integer** | Amount of SP that was in the skill when it started training it&#39;s current level. Used to calculate % of current level complete. | [optional] |
| **queue_position** | **Integer** | queue_position integer |  |
| **skill_id** | **Integer** | skill_id integer |  |
| **start_date** | **Time** | start_date string | [optional] |
| **training_start_sp** | **Integer** | training_start_sp integer | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdSkillqueue200Ok.new(
  finish_date: null,
  finished_level: null,
  level_end_sp: null,
  level_start_sp: null,
  queue_position: null,
  skill_id: null,
  start_date: null,
  training_start_sp: null
)
```

