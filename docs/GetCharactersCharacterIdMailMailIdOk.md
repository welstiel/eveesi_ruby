# RubyEveesiClient::GetCharactersCharacterIdMailMailIdOk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Mail&#39;s body | [optional] |
| **from** | **Integer** | From whom the mail was sent | [optional] |
| **labels** | **Array&lt;Integer&gt;** | Labels attached to the mail | [optional] |
| **read** | **Boolean** | Whether the mail is flagged as read | [optional] |
| **recipients** | [**Array&lt;GetCharactersCharacterIdMailMailIdRecipient&gt;**](GetCharactersCharacterIdMailMailIdRecipient.md) | Recipients of the mail | [optional] |
| **subject** | **String** | Mail subject | [optional] |
| **timestamp** | **Time** | When the mail was sent | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::GetCharactersCharacterIdMailMailIdOk.new(
  body: null,
  from: null,
  labels: null,
  read: null,
  recipients: null,
  subject: null,
  timestamp: null
)
```

