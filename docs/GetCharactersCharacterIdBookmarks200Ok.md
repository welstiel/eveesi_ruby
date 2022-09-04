# RubyEveesiClient::GetCharactersCharacterIdBookmarks200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bookmark_id** | **Integer** | bookmark_id integer |  |
| **coordinates** | [**GetCharactersCharacterIdBookmarksCoordinates**](GetCharactersCharacterIdBookmarksCoordinates.md) |  | [optional] |
| **created** | **Time** | created string |  |
| **creator_id** | **Integer** | creator_id integer |  |
| **folder_id** | **Integer** | folder_id integer | [optional] |
| **item** | [**GetCharactersCharacterIdBookmarksItem**](GetCharactersCharacterIdBookmarksItem.md) |  | [optional] |
| **label** | **String** | label string |  |
| **location_id** | **Integer** | location_id integer |  |
| **notes** | **String** | notes string |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdBookmarks200Ok.new(
  bookmark_id: null,
  coordinates: null,
  created: null,
  creator_id: null,
  folder_id: null,
  item: null,
  label: null,
  location_id: null,
  notes: null
)
```

