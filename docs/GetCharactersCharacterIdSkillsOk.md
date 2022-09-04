# RubyEveesiClient::GetCharactersCharacterIdSkillsOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **skills** | [**Array&lt;GetCharactersCharacterIdSkillsSkill&gt;**](GetCharactersCharacterIdSkillsSkill.md) | skills array |  |
| **total_sp** | **Integer** | total_sp integer |  |
| **unallocated_sp** | **Integer** | Skill points available to be assigned | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdSkillsOk.new(
  skills: null,
  total_sp: null,
  unallocated_sp: null
)
```

