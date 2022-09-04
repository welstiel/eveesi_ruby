# RubyEveesiClient::PutCharactersCharacterIdMailMailIdContents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **labels** | **Array&lt;Integer&gt;** | Labels to assign to the mail. Pre-existing labels are unassigned. | [optional] |
| **read** | **Boolean** | Whether the mail is flagged as read | [optional] |

## Example

```ruby
require 'ruby_eveesi_client'

instance = RubyEveesiClient::PutCharactersCharacterIdMailMailIdContents.new(
  labels: null,
  read: null
)
```

