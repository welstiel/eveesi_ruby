# RubyEveesiClient::GetCharactersCharacterIdMedals200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | corporation_id integer |  |
| **date** | **Time** | date string |  |
| **description** | **String** | description string |  |
| **graphics** | [**Array&lt;GetCharactersCharacterIdMedalsGraphic&gt;**](GetCharactersCharacterIdMedalsGraphic.md) | graphics array |  |
| **issuer_id** | **Integer** | issuer_id integer |  |
| **medal_id** | **Integer** | medal_id integer |  |
| **reason** | **String** | reason string |  |
| **status** | **String** | status string |  |
| **title** | **String** | title string |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdMedals200Ok.new(
  corporation_id: null,
  date: null,
  description: null,
  graphics: null,
  issuer_id: null,
  medal_id: null,
  reason: null,
  status: null,
  title: null
)
```

