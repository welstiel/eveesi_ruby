# RubyEveesiClient::FittingsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_characters_character_id_fittings_fitting_id**](FittingsApi.md#delete_characters_character_id_fittings_fitting_id) | **DELETE** /characters/{character_id}/fittings/{fitting_id}/ | Delete fitting |
| [**get_characters_character_id_fittings**](FittingsApi.md#get_characters_character_id_fittings) | **GET** /characters/{character_id}/fittings/ | Get fittings |
| [**post_characters_character_id_fittings**](FittingsApi.md#post_characters_character_id_fittings) | **POST** /characters/{character_id}/fittings/ | Create fitting |


## delete_characters_character_id_fittings_fitting_id

> delete_characters_character_id_fittings_fitting_id(character_id, fitting_id, opts)

Delete fitting

Delete a fitting from a character  --- Alternate route: `/dev/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/legacy/characters/{character_id}/fittings/{fitting_id}/`  Alternate route: `/v1/characters/{character_id}/fittings/{fitting_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FittingsApi.new
character_id = 56 # Integer | An EVE character ID
fitting_id = 56 # Integer | ID for a fitting of this character
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Delete fitting
  api_instance.delete_characters_character_id_fittings_fitting_id(character_id, fitting_id, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FittingsApi->delete_characters_character_id_fittings_fitting_id: #{e}"
end
```

#### Using the delete_characters_character_id_fittings_fitting_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_characters_character_id_fittings_fitting_id_with_http_info(character_id, fitting_id, opts)

```ruby
begin
  # Delete fitting
  data, status_code, headers = api_instance.delete_characters_character_id_fittings_fitting_id_with_http_info(character_id, fitting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FittingsApi->delete_characters_character_id_fittings_fitting_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **fitting_id** | **Integer** | ID for a fitting of this character |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_fittings

> <Array<GetCharactersCharacterIdFittings200Ok>> get_characters_character_id_fittings(character_id, opts)

Get fittings

Return fittings of a character  --- Alternate route: `/dev/characters/{character_id}/fittings/`  Alternate route: `/v2/characters/{character_id}/fittings/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FittingsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get fittings
  result = api_instance.get_characters_character_id_fittings(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FittingsApi->get_characters_character_id_fittings: #{e}"
end
```

#### Using the get_characters_character_id_fittings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdFittings200Ok>>, Integer, Hash)> get_characters_character_id_fittings_with_http_info(character_id, opts)

```ruby
begin
  # Get fittings
  data, status_code, headers = api_instance.get_characters_character_id_fittings_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdFittings200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FittingsApi->get_characters_character_id_fittings_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdFittings200Ok&gt;**](GetCharactersCharacterIdFittings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_fittings

> <PostCharactersCharacterIdFittingsCreated> post_characters_character_id_fittings(character_id, fitting, opts)

Create fitting

Save a new fitting for a character  --- Alternate route: `/dev/characters/{character_id}/fittings/`  Alternate route: `/v2/characters/{character_id}/fittings/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FittingsApi.new
character_id = 56 # Integer | An EVE character ID
fitting = RubyEveesiClient::PostCharactersCharacterIdFittingsFitting.new({description: 'description_example', items: [RubyEveesiClient::PostCharactersCharacterIdFittingsItem.new({flag: 'Cargo', quantity: 37, type_id: 37})], name: 'name_example', ship_type_id: 37}) # PostCharactersCharacterIdFittingsFitting | Details about the new fitting
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Create fitting
  result = api_instance.post_characters_character_id_fittings(character_id, fitting, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FittingsApi->post_characters_character_id_fittings: #{e}"
end
```

#### Using the post_characters_character_id_fittings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCharactersCharacterIdFittingsCreated>, Integer, Hash)> post_characters_character_id_fittings_with_http_info(character_id, fitting, opts)

```ruby
begin
  # Create fitting
  data, status_code, headers = api_instance.post_characters_character_id_fittings_with_http_info(character_id, fitting, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCharactersCharacterIdFittingsCreated>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FittingsApi->post_characters_character_id_fittings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **fitting** | [**PostCharactersCharacterIdFittingsFitting**](PostCharactersCharacterIdFittingsFitting.md) | Details about the new fitting |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**PostCharactersCharacterIdFittingsCreated**](PostCharactersCharacterIdFittingsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

