# RubyEveesiClient::ContactsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_characters_character_id_contacts**](ContactsApi.md#delete_characters_character_id_contacts) | **DELETE** /characters/{character_id}/contacts/ | Delete contacts |
| [**get_alliances_alliance_id_contacts**](ContactsApi.md#get_alliances_alliance_id_contacts) | **GET** /alliances/{alliance_id}/contacts/ | Get alliance contacts |
| [**get_alliances_alliance_id_contacts_labels**](ContactsApi.md#get_alliances_alliance_id_contacts_labels) | **GET** /alliances/{alliance_id}/contacts/labels/ | Get alliance contact labels |
| [**get_characters_character_id_contacts**](ContactsApi.md#get_characters_character_id_contacts) | **GET** /characters/{character_id}/contacts/ | Get contacts |
| [**get_characters_character_id_contacts_labels**](ContactsApi.md#get_characters_character_id_contacts_labels) | **GET** /characters/{character_id}/contacts/labels/ | Get contact labels |
| [**get_corporations_corporation_id_contacts**](ContactsApi.md#get_corporations_corporation_id_contacts) | **GET** /corporations/{corporation_id}/contacts/ | Get corporation contacts |
| [**get_corporations_corporation_id_contacts_labels**](ContactsApi.md#get_corporations_corporation_id_contacts_labels) | **GET** /corporations/{corporation_id}/contacts/labels/ | Get corporation contact labels |
| [**post_characters_character_id_contacts**](ContactsApi.md#post_characters_character_id_contacts) | **POST** /characters/{character_id}/contacts/ | Add contacts |
| [**put_characters_character_id_contacts**](ContactsApi.md#put_characters_character_id_contacts) | **PUT** /characters/{character_id}/contacts/ | Edit contacts |


## delete_characters_character_id_contacts

> delete_characters_character_id_contacts(character_id, contact_ids, opts)

Delete contacts

Bulk delete contacts  --- Alternate route: `/dev/characters/{character_id}/contacts/`  Alternate route: `/v2/characters/{character_id}/contacts/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
character_id = 56 # Integer | An EVE character ID
contact_ids = [37] # Array<Integer> | A list of contacts to delete
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Delete contacts
  api_instance.delete_characters_character_id_contacts(character_id, contact_ids, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->delete_characters_character_id_contacts: #{e}"
end
```

#### Using the delete_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_contacts_with_http_info(character_id, contact_ids, opts)

```ruby
begin
  # Delete contacts
  data, status_code, headers = api_instance.delete_characters_character_id_contacts_with_http_info(character_id, contact_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->delete_characters_character_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **contact_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of contacts to delete |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id_contacts

> <Array<GetAlliancesAllianceIdContacts200Ok>> get_alliances_alliance_id_contacts(alliance_id, opts)

Get alliance contacts

Return contacts of an alliance  --- Alternate route: `/dev/alliances/{alliance_id}/contacts/`  Alternate route: `/v2/alliances/{alliance_id}/contacts/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
alliance_id = 56 # Integer | An EVE alliance ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get alliance contacts
  result = api_instance.get_alliances_alliance_id_contacts(alliance_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts: #{e}"
end
```

#### Using the get_alliances_alliance_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetAlliancesAllianceIdContacts200Ok>>, Integer, Hash)> get_alliances_alliance_id_contacts_with_http_info(alliance_id, opts)

```ruby
begin
  # Get alliance contacts
  data, status_code, headers = api_instance.get_alliances_alliance_id_contacts_with_http_info(alliance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetAlliancesAllianceIdContacts200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | An EVE alliance ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetAlliancesAllianceIdContacts200Ok&gt;**](GetAlliancesAllianceIdContacts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id_contacts_labels

> <Array<GetAlliancesAllianceIdContactsLabels200Ok>> get_alliances_alliance_id_contacts_labels(alliance_id, opts)

Get alliance contact labels

Return custom labels for an alliance's contacts  --- Alternate route: `/dev/alliances/{alliance_id}/contacts/labels/`  Alternate route: `/legacy/alliances/{alliance_id}/contacts/labels/`  Alternate route: `/v1/alliances/{alliance_id}/contacts/labels/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
alliance_id = 56 # Integer | An EVE alliance ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get alliance contact labels
  result = api_instance.get_alliances_alliance_id_contacts_labels(alliance_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts_labels: #{e}"
end
```

#### Using the get_alliances_alliance_id_contacts_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetAlliancesAllianceIdContactsLabels200Ok>>, Integer, Hash)> get_alliances_alliance_id_contacts_labels_with_http_info(alliance_id, opts)

```ruby
begin
  # Get alliance contact labels
  data, status_code, headers = api_instance.get_alliances_alliance_id_contacts_labels_with_http_info(alliance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetAlliancesAllianceIdContactsLabels200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_alliances_alliance_id_contacts_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | An EVE alliance ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetAlliancesAllianceIdContactsLabels200Ok&gt;**](GetAlliancesAllianceIdContactsLabels200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contacts

> <Array<GetCharactersCharacterIdContacts200Ok>> get_characters_character_id_contacts(character_id, opts)

Get contacts

Return contacts of a character  --- Alternate route: `/dev/characters/{character_id}/contacts/`  Alternate route: `/v2/characters/{character_id}/contacts/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get contacts
  result = api_instance.get_characters_character_id_contacts(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts: #{e}"
end
```

#### Using the get_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdContacts200Ok>>, Integer, Hash)> get_characters_character_id_contacts_with_http_info(character_id, opts)

```ruby
begin
  # Get contacts
  data, status_code, headers = api_instance.get_characters_character_id_contacts_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdContacts200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdContacts200Ok&gt;**](GetCharactersCharacterIdContacts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contacts_labels

> <Array<GetCharactersCharacterIdContactsLabels200Ok>> get_characters_character_id_contacts_labels(character_id, opts)

Get contact labels

Return custom labels for a character's contacts  --- Alternate route: `/dev/characters/{character_id}/contacts/labels/`  Alternate route: `/legacy/characters/{character_id}/contacts/labels/`  Alternate route: `/v1/characters/{character_id}/contacts/labels/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get contact labels
  result = api_instance.get_characters_character_id_contacts_labels(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts_labels: #{e}"
end
```

#### Using the get_characters_character_id_contacts_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdContactsLabels200Ok>>, Integer, Hash)> get_characters_character_id_contacts_labels_with_http_info(character_id, opts)

```ruby
begin
  # Get contact labels
  data, status_code, headers = api_instance.get_characters_character_id_contacts_labels_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdContactsLabels200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_characters_character_id_contacts_labels_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdContactsLabels200Ok&gt;**](GetCharactersCharacterIdContactsLabels200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contacts

> <Array<GetCorporationsCorporationIdContacts200Ok>> get_corporations_corporation_id_contacts(corporation_id, opts)

Get corporation contacts

Return contacts of a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/contacts/`  Alternate route: `/v2/corporations/{corporation_id}/contacts/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation contacts
  result = api_instance.get_corporations_corporation_id_contacts(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts: #{e}"
end
```

#### Using the get_corporations_corporation_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdContacts200Ok>>, Integer, Hash)> get_corporations_corporation_id_contacts_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation contacts
  data, status_code, headers = api_instance.get_corporations_corporation_id_contacts_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdContacts200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdContacts200Ok&gt;**](GetCorporationsCorporationIdContacts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contacts_labels

> <Array<GetCorporationsCorporationIdContactsLabels200Ok>> get_corporations_corporation_id_contacts_labels(corporation_id, opts)

Get corporation contact labels

Return custom labels for a corporation's contacts  --- Alternate route: `/dev/corporations/{corporation_id}/contacts/labels/`  Alternate route: `/legacy/corporations/{corporation_id}/contacts/labels/`  Alternate route: `/v1/corporations/{corporation_id}/contacts/labels/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation contact labels
  result = api_instance.get_corporations_corporation_id_contacts_labels(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts_labels: #{e}"
end
```

#### Using the get_corporations_corporation_id_contacts_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdContactsLabels200Ok>>, Integer, Hash)> get_corporations_corporation_id_contacts_labels_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation contact labels
  data, status_code, headers = api_instance.get_corporations_corporation_id_contacts_labels_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdContactsLabels200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->get_corporations_corporation_id_contacts_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdContactsLabels200Ok&gt;**](GetCorporationsCorporationIdContactsLabels200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_contacts

> Array&lt;Integer&gt; post_characters_character_id_contacts(character_id, standing, contact_ids, opts)

Add contacts

Bulk add contacts with same settings  --- Alternate route: `/dev/characters/{character_id}/contacts/`  Alternate route: `/v2/characters/{character_id}/contacts/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
character_id = 56 # Integer | An EVE character ID
standing = 3.4 # Float | Standing for the contact
contact_ids = [37] # Array<Integer> | A list of contacts
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  label_ids: [3.56], # Array<Integer> | Add custom labels to the new contact
  token: 'token_example', # String | Access token to use if unable to set a header
  watched: true # Boolean | Whether the contact should be watched, note this is only effective on characters
}

begin
  # Add contacts
  result = api_instance.post_characters_character_id_contacts(character_id, standing, contact_ids, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->post_characters_character_id_contacts: #{e}"
end
```

#### Using the post_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> post_characters_character_id_contacts_with_http_info(character_id, standing, contact_ids, opts)

```ruby
begin
  # Add contacts
  data, status_code, headers = api_instance.post_characters_character_id_contacts_with_http_info(character_id, standing, contact_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->post_characters_character_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **standing** | **Float** | Standing for the contact |  |
| **contact_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of contacts |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **label_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Add custom labels to the new contact | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |
| **watched** | **Boolean** | Whether the contact should be watched, note this is only effective on characters | [optional][default to false] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_characters_character_id_contacts

> put_characters_character_id_contacts(character_id, standing, contact_ids, opts)

Edit contacts

Bulk edit contacts with same settings  --- Alternate route: `/dev/characters/{character_id}/contacts/`  Alternate route: `/v2/characters/{character_id}/contacts/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContactsApi.new
character_id = 56 # Integer | An EVE character ID
standing = 3.4 # Float | Standing for the contact
contact_ids = [37] # Array<Integer> | A list of contacts
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  label_ids: [3.56], # Array<Integer> | Add custom labels to the contact
  token: 'token_example', # String | Access token to use if unable to set a header
  watched: true # Boolean | Whether the contact should be watched, note this is only effective on characters
}

begin
  # Edit contacts
  api_instance.put_characters_character_id_contacts(character_id, standing, contact_ids, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->put_characters_character_id_contacts: #{e}"
end
```

#### Using the put_characters_character_id_contacts_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_characters_character_id_contacts_with_http_info(character_id, standing, contact_ids, opts)

```ruby
begin
  # Edit contacts
  data, status_code, headers = api_instance.put_characters_character_id_contacts_with_http_info(character_id, standing, contact_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContactsApi->put_characters_character_id_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **standing** | **Float** | Standing for the contact |  |
| **contact_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of contacts |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **label_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Add custom labels to the contact | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |
| **watched** | **Boolean** | Whether the contact should be watched, note this is only effective on characters | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

