# RubyEveesiClient::GetCharactersCharacterIdNotificationsContacts200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | message string |  |
| **notification_id** | **Integer** | notification_id integer |  |
| **send_date** | **Time** | send_date string |  |
| **sender_character_id** | **Integer** | sender_character_id integer |  |
| **standing_level** | **Float** | A number representing the standing level the receiver has been added at by the sender. The standing levels are as follows: -10 -&gt; Terrible | -5 -&gt; Bad |  0 -&gt; Neutral |  5 -&gt; Good |  10 -&gt; Excellent |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdNotificationsContacts200Ok.new(
  message: null,
  notification_id: null,
  send_date: null,
  sender_character_id: null,
  standing_level: null
)
```

