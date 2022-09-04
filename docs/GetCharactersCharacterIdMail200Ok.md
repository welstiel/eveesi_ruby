# RubyEveesiClient::GetCharactersCharacterIdMail200Ok

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | From whom the mail was sent | [optional] |
| **is_read** | **Boolean** | is_read boolean | [optional] |
| **labels** | **Array&lt;Integer&gt;** | labels array | [optional] |
| **mail_id** | **Integer** | mail_id integer | [optional] |
| **recipients** | [**Array&lt;GetCharactersCharacterIdMailRecipient&gt;**](GetCharactersCharacterIdMailRecipient.md) | Recipients of the mail | [optional] |
| **subject** | **String** | Mail subject | [optional] |
| **timestamp** | **Time** | When the mail was sent | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdMail200Ok.new(
  from: null,
  is_read: null,
  labels: null,
  mail_id: null,
  recipients: null,
  subject: null,
  timestamp: null
)
```

