# RubyEveesiClient::BookmarksApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_bookmarks**](BookmarksApi.md#get_characters_character_id_bookmarks) | **GET** /characters/{character_id}/bookmarks/ | List bookmarks |
| [**get_characters_character_id_bookmarks_folders**](BookmarksApi.md#get_characters_character_id_bookmarks_folders) | **GET** /characters/{character_id}/bookmarks/folders/ | List bookmark folders |
| [**get_corporations_corporation_id_bookmarks**](BookmarksApi.md#get_corporations_corporation_id_bookmarks) | **GET** /corporations/{corporation_id}/bookmarks/ | List corporation bookmarks |
| [**get_corporations_corporation_id_bookmarks_folders**](BookmarksApi.md#get_corporations_corporation_id_bookmarks_folders) | **GET** /corporations/{corporation_id}/bookmarks/folders/ | List corporation bookmark folders |


## get_characters_character_id_bookmarks

> <Array<GetCharactersCharacterIdBookmarks200Ok>> get_characters_character_id_bookmarks(character_id, opts)

List bookmarks

A list of your character's personal bookmarks  --- Alternate route: `/dev/characters/{character_id}/bookmarks/`  Alternate route: `/v2/characters/{character_id}/bookmarks/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::BookmarksApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List bookmarks
  result = api_instance.get_characters_character_id_bookmarks(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_characters_character_id_bookmarks: #{e}"
end
```

#### Using the get_characters_character_id_bookmarks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdBookmarks200Ok>>, Integer, Hash)> get_characters_character_id_bookmarks_with_http_info(character_id, opts)

```ruby
begin
  # List bookmarks
  data, status_code, headers = api_instance.get_characters_character_id_bookmarks_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdBookmarks200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_characters_character_id_bookmarks_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdBookmarks200Ok&gt;**](GetCharactersCharacterIdBookmarks200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_bookmarks_folders

> <Array<GetCharactersCharacterIdBookmarksFolders200Ok>> get_characters_character_id_bookmarks_folders(character_id, opts)

List bookmark folders

A list of your character's personal bookmark folders  --- Alternate route: `/dev/characters/{character_id}/bookmarks/folders/`  Alternate route: `/v2/characters/{character_id}/bookmarks/folders/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::BookmarksApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List bookmark folders
  result = api_instance.get_characters_character_id_bookmarks_folders(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_characters_character_id_bookmarks_folders: #{e}"
end
```

#### Using the get_characters_character_id_bookmarks_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdBookmarksFolders200Ok>>, Integer, Hash)> get_characters_character_id_bookmarks_folders_with_http_info(character_id, opts)

```ruby
begin
  # List bookmark folders
  data, status_code, headers = api_instance.get_characters_character_id_bookmarks_folders_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdBookmarksFolders200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_characters_character_id_bookmarks_folders_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdBookmarksFolders200Ok&gt;**](GetCharactersCharacterIdBookmarksFolders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_bookmarks

> <Array<GetCorporationsCorporationIdBookmarks200Ok>> get_corporations_corporation_id_bookmarks(corporation_id, opts)

List corporation bookmarks

A list of your corporation's bookmarks  --- Alternate route: `/dev/corporations/{corporation_id}/bookmarks/`  Alternate route: `/legacy/corporations/{corporation_id}/bookmarks/`  Alternate route: `/v1/corporations/{corporation_id}/bookmarks/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::BookmarksApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List corporation bookmarks
  result = api_instance.get_corporations_corporation_id_bookmarks(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_corporations_corporation_id_bookmarks: #{e}"
end
```

#### Using the get_corporations_corporation_id_bookmarks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdBookmarks200Ok>>, Integer, Hash)> get_corporations_corporation_id_bookmarks_with_http_info(corporation_id, opts)

```ruby
begin
  # List corporation bookmarks
  data, status_code, headers = api_instance.get_corporations_corporation_id_bookmarks_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdBookmarks200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_corporations_corporation_id_bookmarks_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdBookmarks200Ok&gt;**](GetCorporationsCorporationIdBookmarks200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_bookmarks_folders

> <Array<GetCorporationsCorporationIdBookmarksFolders200Ok>> get_corporations_corporation_id_bookmarks_folders(corporation_id, opts)

List corporation bookmark folders

A list of your corporation's bookmark folders  --- Alternate route: `/dev/corporations/{corporation_id}/bookmarks/folders/`  Alternate route: `/legacy/corporations/{corporation_id}/bookmarks/folders/`  Alternate route: `/v1/corporations/{corporation_id}/bookmarks/folders/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::BookmarksApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List corporation bookmark folders
  result = api_instance.get_corporations_corporation_id_bookmarks_folders(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_corporations_corporation_id_bookmarks_folders: #{e}"
end
```

#### Using the get_corporations_corporation_id_bookmarks_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdBookmarksFolders200Ok>>, Integer, Hash)> get_corporations_corporation_id_bookmarks_folders_with_http_info(corporation_id, opts)

```ruby
begin
  # List corporation bookmark folders
  data, status_code, headers = api_instance.get_corporations_corporation_id_bookmarks_folders_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdBookmarksFolders200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling BookmarksApi->get_corporations_corporation_id_bookmarks_folders_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdBookmarksFolders200Ok&gt;**](GetCorporationsCorporationIdBookmarksFolders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

