# RubyEveesiClient::GetCharactersCharacterIdClonesOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **home_location** | [**GetCharactersCharacterIdClonesHomeLocation**](GetCharactersCharacterIdClonesHomeLocation.md) |  | [optional] |
| **jump_clones** | [**Array&lt;GetCharactersCharacterIdClonesJumpClone&gt;**](GetCharactersCharacterIdClonesJumpClone.md) | jump_clones array |  |
| **last_clone_jump_date** | **Time** | last_clone_jump_date string | [optional] |
| **last_station_change_date** | **Time** | last_station_change_date string | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdClonesOk.new(
  home_location: null,
  jump_clones: null,
  last_clone_jump_date: null,
  last_station_change_date: null
)
```

