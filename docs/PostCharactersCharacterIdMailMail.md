# RubyEveesiClient::PostCharactersCharacterIdMailMail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approved_cost** | **Integer** | approved_cost integer | [optional][default to 0] |
| **body** | **String** | body string |  |
| **recipients** | [**Array&lt;PostCharactersCharacterIdMailRecipient&gt;**](PostCharactersCharacterIdMailRecipient.md) | recipients array |  |
| **subject** | **String** | subject string |  |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::PostCharactersCharacterIdMailMail.new(
  approved_cost: null,
  body: null,
  recipients: null,
  subject: null
)
```

