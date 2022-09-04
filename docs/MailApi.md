# RubyEveesiClient::MailApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_characters_character_id_mail_labels_label_id**](MailApi.md#delete_characters_character_id_mail_labels_label_id) | **DELETE** /characters/{character_id}/mail/labels/{label_id}/ | Delete a mail label |
| [**delete_characters_character_id_mail_mail_id**](MailApi.md#delete_characters_character_id_mail_mail_id) | **DELETE** /characters/{character_id}/mail/{mail_id}/ | Delete a mail |
| [**get_characters_character_id_mail**](MailApi.md#get_characters_character_id_mail) | **GET** /characters/{character_id}/mail/ | Return mail headers |
| [**get_characters_character_id_mail_labels**](MailApi.md#get_characters_character_id_mail_labels) | **GET** /characters/{character_id}/mail/labels/ | Get mail labels and unread counts |
| [**get_characters_character_id_mail_lists**](MailApi.md#get_characters_character_id_mail_lists) | **GET** /characters/{character_id}/mail/lists/ | Return mailing list subscriptions |
| [**get_characters_character_id_mail_mail_id**](MailApi.md#get_characters_character_id_mail_mail_id) | **GET** /characters/{character_id}/mail/{mail_id}/ | Return a mail |
| [**post_characters_character_id_mail**](MailApi.md#post_characters_character_id_mail) | **POST** /characters/{character_id}/mail/ | Send a new mail |
| [**post_characters_character_id_mail_labels**](MailApi.md#post_characters_character_id_mail_labels) | **POST** /characters/{character_id}/mail/labels/ | Create a mail label |
| [**put_characters_character_id_mail_mail_id**](MailApi.md#put_characters_character_id_mail_mail_id) | **PUT** /characters/{character_id}/mail/{mail_id}/ | Update metadata about a mail |


## delete_characters_character_id_mail_labels_label_id

> delete_characters_character_id_mail_labels_label_id(character_id, label_id, opts)

Delete a mail label

Delete a mail label  --- Alternate route: `/dev/characters/{character_id}/mail/labels/{label_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/labels/{label_id}/`  Alternate route: `/v1/characters/{character_id}/mail/labels/{label_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
label_id = 56 # Integer | An EVE label id
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Delete a mail label
  api_instance.delete_characters_character_id_mail_labels_label_id(character_id, label_id, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_labels_label_id: #{e}"
end
```

#### Using the delete_characters_character_id_mail_labels_label_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_mail_labels_label_id_with_http_info(character_id, label_id, opts)

```ruby
begin
  # Delete a mail label
  data, status_code, headers = api_instance.delete_characters_character_id_mail_labels_label_id_with_http_info(character_id, label_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_labels_label_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **label_id** | **Integer** | An EVE label id |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_characters_character_id_mail_mail_id

> delete_characters_character_id_mail_mail_id(character_id, mail_id, opts)

Delete a mail

Delete a mail  --- Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
mail_id = 56 # Integer | An EVE mail ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Delete a mail
  api_instance.delete_characters_character_id_mail_mail_id(character_id, mail_id, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_mail_id: #{e}"
end
```

#### Using the delete_characters_character_id_mail_mail_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)

```ruby
begin
  # Delete a mail
  data, status_code, headers = api_instance.delete_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->delete_characters_character_id_mail_mail_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **mail_id** | **Integer** | An EVE mail ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mail

> <Array<GetCharactersCharacterIdMail200Ok>> get_characters_character_id_mail(character_id, opts)

Return mail headers

Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards  --- Alternate route: `/dev/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/v1/characters/{character_id}/mail/`  --- This route is cached for up to 30 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  labels: [37], # Array<Integer> | Fetch only mails that match one or more of the given labels
  last_mail_id: 56, # Integer | List only mail with an ID lower than the given ID, if present
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Return mail headers
  result = api_instance.get_characters_character_id_mail(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail: #{e}"
end
```

#### Using the get_characters_character_id_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdMail200Ok>>, Integer, Hash)> get_characters_character_id_mail_with_http_info(character_id, opts)

```ruby
begin
  # Return mail headers
  data, status_code, headers = api_instance.get_characters_character_id_mail_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdMail200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **labels** | [**Array&lt;Integer&gt;**](Integer.md) | Fetch only mails that match one or more of the given labels | [optional] |
| **last_mail_id** | **Integer** | List only mail with an ID lower than the given ID, if present | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdMail200Ok&gt;**](GetCharactersCharacterIdMail200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mail_labels

> <GetCharactersCharacterIdMailLabelsOk> get_characters_character_id_mail_labels(character_id, opts)

Get mail labels and unread counts

Return a list of the users mail labels, unread counts for each label and a total unread count.  --- Alternate route: `/dev/characters/{character_id}/mail/labels/`  Alternate route: `/v3/characters/{character_id}/mail/labels/`  --- This route is cached for up to 30 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get mail labels and unread counts
  result = api_instance.get_characters_character_id_mail_labels(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_labels: #{e}"
end
```

#### Using the get_characters_character_id_mail_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdMailLabelsOk>, Integer, Hash)> get_characters_character_id_mail_labels_with_http_info(character_id, opts)

```ruby
begin
  # Get mail labels and unread counts
  data, status_code, headers = api_instance.get_characters_character_id_mail_labels_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdMailLabelsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetCharactersCharacterIdMailLabelsOk**](GetCharactersCharacterIdMailLabelsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mail_lists

> <Array<GetCharactersCharacterIdMailLists200Ok>> get_characters_character_id_mail_lists(character_id, opts)

Return mailing list subscriptions

Return all mailing lists that the character is subscribed to  --- Alternate route: `/dev/characters/{character_id}/mail/lists/`  Alternate route: `/legacy/characters/{character_id}/mail/lists/`  Alternate route: `/v1/characters/{character_id}/mail/lists/`  --- This route is cached for up to 120 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Return mailing list subscriptions
  result = api_instance.get_characters_character_id_mail_lists(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_lists: #{e}"
end
```

#### Using the get_characters_character_id_mail_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdMailLists200Ok>>, Integer, Hash)> get_characters_character_id_mail_lists_with_http_info(character_id, opts)

```ruby
begin
  # Return mailing list subscriptions
  data, status_code, headers = api_instance.get_characters_character_id_mail_lists_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdMailLists200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdMailLists200Ok&gt;**](GetCharactersCharacterIdMailLists200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mail_mail_id

> <GetCharactersCharacterIdMailMailIdOk> get_characters_character_id_mail_mail_id(character_id, mail_id, opts)

Return a mail

Return the contents of an EVE mail  --- Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/`  --- This route is cached for up to 30 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
mail_id = 56 # Integer | An EVE mail ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Return a mail
  result = api_instance.get_characters_character_id_mail_mail_id(character_id, mail_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_mail_id: #{e}"
end
```

#### Using the get_characters_character_id_mail_mail_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdMailMailIdOk>, Integer, Hash)> get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)

```ruby
begin
  # Return a mail
  data, status_code, headers = api_instance.get_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdMailMailIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->get_characters_character_id_mail_mail_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **mail_id** | **Integer** | An EVE mail ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetCharactersCharacterIdMailMailIdOk**](GetCharactersCharacterIdMailMailIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_mail

> Integer post_characters_character_id_mail(character_id, mail, opts)

Send a new mail

Create and send a new mail  --- Alternate route: `/dev/characters/{character_id}/mail/`  Alternate route: `/legacy/characters/{character_id}/mail/`  Alternate route: `/v1/characters/{character_id}/mail/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
mail = RubyEveesiClient::PostCharactersCharacterIdMailMail.new({body: 'body_example', recipients: [RubyEveesiClient::PostCharactersCharacterIdMailRecipient.new({recipient_id: 37, recipient_type: 'alliance'})], subject: 'subject_example'}) # PostCharactersCharacterIdMailMail | The mail to send
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Send a new mail
  result = api_instance.post_characters_character_id_mail(character_id, mail, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail: #{e}"
end
```

#### Using the post_characters_character_id_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> post_characters_character_id_mail_with_http_info(character_id, mail, opts)

```ruby
begin
  # Send a new mail
  data, status_code, headers = api_instance.post_characters_character_id_mail_with_http_info(character_id, mail, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **mail** | [**PostCharactersCharacterIdMailMail**](PostCharactersCharacterIdMailMail.md) | The mail to send |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

**Integer**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_characters_character_id_mail_labels

> Integer post_characters_character_id_mail_labels(character_id, label, opts)

Create a mail label

Create a mail label  --- Alternate route: `/dev/characters/{character_id}/mail/labels/`  Alternate route: `/legacy/characters/{character_id}/mail/labels/`  Alternate route: `/v2/characters/{character_id}/mail/labels/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
label = RubyEveesiClient::PostCharactersCharacterIdMailLabelsLabel.new({name: 'name_example'}) # PostCharactersCharacterIdMailLabelsLabel | Label to create
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Create a mail label
  result = api_instance.post_characters_character_id_mail_labels(character_id, label, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail_labels: #{e}"
end
```

#### Using the post_characters_character_id_mail_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> post_characters_character_id_mail_labels_with_http_info(character_id, label, opts)

```ruby
begin
  # Create a mail label
  data, status_code, headers = api_instance.post_characters_character_id_mail_labels_with_http_info(character_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->post_characters_character_id_mail_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **label** | [**PostCharactersCharacterIdMailLabelsLabel**](PostCharactersCharacterIdMailLabelsLabel.md) | Label to create |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

**Integer**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_characters_character_id_mail_mail_id

> put_characters_character_id_mail_mail_id(character_id, mail_id, contents, opts)

Update metadata about a mail

Update metadata about a mail  --- Alternate route: `/dev/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/legacy/characters/{character_id}/mail/{mail_id}/`  Alternate route: `/v1/characters/{character_id}/mail/{mail_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::MailApi.new
character_id = 56 # Integer | An EVE character ID
mail_id = 56 # Integer | An EVE mail ID
contents = RubyEveesiClient::PutCharactersCharacterIdMailMailIdContents.new # PutCharactersCharacterIdMailMailIdContents | Data used to update the mail
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Update metadata about a mail
  api_instance.put_characters_character_id_mail_mail_id(character_id, mail_id, contents, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->put_characters_character_id_mail_mail_id: #{e}"
end
```

#### Using the put_characters_character_id_mail_mail_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, contents, opts)

```ruby
begin
  # Update metadata about a mail
  data, status_code, headers = api_instance.put_characters_character_id_mail_mail_id_with_http_info(character_id, mail_id, contents, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling MailApi->put_characters_character_id_mail_mail_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **mail_id** | **Integer** | An EVE mail ID |  |
| **contents** | [**PutCharactersCharacterIdMailMailIdContents**](PutCharactersCharacterIdMailMailIdContents.md) | Data used to update the mail |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

