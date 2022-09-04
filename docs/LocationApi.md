# RubyEveesiClient::LocationApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_location**](LocationApi.md#get_characters_character_id_location) | **GET** /characters/{character_id}/location/ | Get character location |
| [**get_characters_character_id_online**](LocationApi.md#get_characters_character_id_online) | **GET** /characters/{character_id}/online/ | Get character online |
| [**get_characters_character_id_ship**](LocationApi.md#get_characters_character_id_ship) | **GET** /characters/{character_id}/ship/ | Get current ship |


## get_characters_character_id_location

> <GetCharactersCharacterIdLocationOk> get_characters_character_id_location(character_id, opts)

Get character location

Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable  --- Alternate route: `/dev/characters/{character_id}/location/`  Alternate route: `/legacy/characters/{character_id}/location/`  Alternate route: `/v1/characters/{character_id}/location/`  Alternate route: `/v2/characters/{character_id}/location/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::LocationApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character location
  result = api_instance.get_characters_character_id_location(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LocationApi->get_characters_character_id_location: #{e}"
end
```

#### Using the get_characters_character_id_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdLocationOk>, Integer, Hash)> get_characters_character_id_location_with_http_info(character_id, opts)

```ruby
begin
  # Get character location
  data, status_code, headers = api_instance.get_characters_character_id_location_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdLocationOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LocationApi->get_characters_character_id_location_with_http_info: #{e}"
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

[**GetCharactersCharacterIdLocationOk**](GetCharactersCharacterIdLocationOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_online

> <GetCharactersCharacterIdOnlineOk> get_characters_character_id_online(character_id, opts)

Get character online

Checks if the character is currently online  --- Alternate route: `/dev/characters/{character_id}/online/`  Alternate route: `/v2/characters/{character_id}/online/`  Alternate route: `/v3/characters/{character_id}/online/`  --- This route is cached for up to 60 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::LocationApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character online
  result = api_instance.get_characters_character_id_online(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LocationApi->get_characters_character_id_online: #{e}"
end
```

#### Using the get_characters_character_id_online_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdOnlineOk>, Integer, Hash)> get_characters_character_id_online_with_http_info(character_id, opts)

```ruby
begin
  # Get character online
  data, status_code, headers = api_instance.get_characters_character_id_online_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdOnlineOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LocationApi->get_characters_character_id_online_with_http_info: #{e}"
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

[**GetCharactersCharacterIdOnlineOk**](GetCharactersCharacterIdOnlineOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_ship

> <GetCharactersCharacterIdShipOk> get_characters_character_id_ship(character_id, opts)

Get current ship

Get the current ship type, name and id  --- Alternate route: `/dev/characters/{character_id}/ship/`  Alternate route: `/legacy/characters/{character_id}/ship/`  Alternate route: `/v1/characters/{character_id}/ship/`  Alternate route: `/v2/characters/{character_id}/ship/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::LocationApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get current ship
  result = api_instance.get_characters_character_id_ship(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LocationApi->get_characters_character_id_ship: #{e}"
end
```

#### Using the get_characters_character_id_ship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdShipOk>, Integer, Hash)> get_characters_character_id_ship_with_http_info(character_id, opts)

```ruby
begin
  # Get current ship
  data, status_code, headers = api_instance.get_characters_character_id_ship_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdShipOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LocationApi->get_characters_character_id_ship_with_http_info: #{e}"
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

[**GetCharactersCharacterIdShipOk**](GetCharactersCharacterIdShipOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

