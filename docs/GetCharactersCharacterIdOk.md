# RubyEveesiClient::GetCharactersCharacterIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | The character&#39;s alliance ID | [optional] |
| **birthday** | **Time** | Creation date of the character |  |
| **bloodline_id** | **Integer** | bloodline_id integer |  |
| **corporation_id** | **Integer** | The character&#39;s corporation ID |  |
| **description** | **String** | description string | [optional] |
| **faction_id** | **Integer** | ID of the faction the character is fighting for, if the character is enlisted in Factional Warfare | [optional] |
| **gender** | **String** | gender string |  |
| **name** | **String** | name string |  |
| **race_id** | **Integer** | race_id integer |  |
| **security_status** | **Float** | security_status number | [optional] |
| **title** | **String** | The individual title of the character | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdOk.new(
  alliance_id: null,
  birthday: null,
  bloodline_id: null,
  corporation_id: null,
  description: null,
  faction_id: null,
  gender: null,
  name: null,
  race_id: null,
  security_status: null,
  title: null
)
```

