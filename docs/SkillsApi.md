# RubyEveesiClient::SkillsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_attributes**](SkillsApi.md#get_characters_character_id_attributes) | **GET** /characters/{character_id}/attributes/ | Get character attributes |
| [**get_characters_character_id_skillqueue**](SkillsApi.md#get_characters_character_id_skillqueue) | **GET** /characters/{character_id}/skillqueue/ | Get character&#39;s skill queue |
| [**get_characters_character_id_skills**](SkillsApi.md#get_characters_character_id_skills) | **GET** /characters/{character_id}/skills/ | Get character skills |


## get_characters_character_id_attributes

> <GetCharactersCharacterIdAttributesOk> get_characters_character_id_attributes(character_id, opts)

Get character attributes

Return attributes of a character  --- Alternate route: `/dev/characters/{character_id}/attributes/`  Alternate route: `/legacy/characters/{character_id}/attributes/`  Alternate route: `/v1/characters/{character_id}/attributes/`  --- This route is cached for up to 120 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::SkillsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character attributes
  result = api_instance.get_characters_character_id_attributes(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_attributes: #{e}"
end
```

#### Using the get_characters_character_id_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdAttributesOk>, Integer, Hash)> get_characters_character_id_attributes_with_http_info(character_id, opts)

```ruby
begin
  # Get character attributes
  data, status_code, headers = api_instance.get_characters_character_id_attributes_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdAttributesOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_attributes_with_http_info: #{e}"
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

[**GetCharactersCharacterIdAttributesOk**](GetCharactersCharacterIdAttributesOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_skillqueue

> <Array<GetCharactersCharacterIdSkillqueue200Ok>> get_characters_character_id_skillqueue(character_id, opts)

Get character's skill queue

List the configured skill queue for the given character  --- Alternate route: `/dev/characters/{character_id}/skillqueue/`  Alternate route: `/legacy/characters/{character_id}/skillqueue/`  Alternate route: `/v2/characters/{character_id}/skillqueue/`  --- This route is cached for up to 120 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::SkillsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character's skill queue
  result = api_instance.get_characters_character_id_skillqueue(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skillqueue: #{e}"
end
```

#### Using the get_characters_character_id_skillqueue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdSkillqueue200Ok>>, Integer, Hash)> get_characters_character_id_skillqueue_with_http_info(character_id, opts)

```ruby
begin
  # Get character's skill queue
  data, status_code, headers = api_instance.get_characters_character_id_skillqueue_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdSkillqueue200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skillqueue_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdSkillqueue200Ok&gt;**](GetCharactersCharacterIdSkillqueue200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_skills

> <GetCharactersCharacterIdSkillsOk> get_characters_character_id_skills(character_id, opts)

Get character skills

List all trained skills for the given character  --- Alternate route: `/dev/characters/{character_id}/skills/`  Alternate route: `/v4/characters/{character_id}/skills/`  --- This route is cached for up to 120 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::SkillsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character skills
  result = api_instance.get_characters_character_id_skills(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skills: #{e}"
end
```

#### Using the get_characters_character_id_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdSkillsOk>, Integer, Hash)> get_characters_character_id_skills_with_http_info(character_id, opts)

```ruby
begin
  # Get character skills
  data, status_code, headers = api_instance.get_characters_character_id_skills_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdSkillsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SkillsApi->get_characters_character_id_skills_with_http_info: #{e}"
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

[**GetCharactersCharacterIdSkillsOk**](GetCharactersCharacterIdSkillsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

