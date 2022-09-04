# RubyEveesiClient::GetCharactersCharacterIdAttributesOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accrued_remap_cooldown_date** | **Time** | Neural remapping cooldown after a character uses remap accrued over time | [optional] |
| **bonus_remaps** | **Integer** | Number of available bonus character neural remaps | [optional] |
| **charisma** | **Integer** | charisma integer |  |
| **intelligence** | **Integer** | intelligence integer |  |
| **last_remap_date** | **Time** | Datetime of last neural remap, including usage of bonus remaps | [optional] |
| **memory** | **Integer** | memory integer |  |
| **perception** | **Integer** | perception integer |  |
| **willpower** | **Integer** | willpower integer |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdAttributesOk.new(
  accrued_remap_cooldown_date: null,
  bonus_remaps: null,
  charisma: null,
  intelligence: null,
  last_remap_date: null,
  memory: null,
  perception: null,
  willpower: null
)
```

