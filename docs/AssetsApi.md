# RubyEveesiClient::AssetsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_assets**](AssetsApi.md#get_characters_character_id_assets) | **GET** /characters/{character_id}/assets/ | Get character assets |
| [**get_corporations_corporation_id_assets**](AssetsApi.md#get_corporations_corporation_id_assets) | **GET** /corporations/{corporation_id}/assets/ | Get corporation assets |
| [**post_characters_character_id_assets_locations**](AssetsApi.md#post_characters_character_id_assets_locations) | **POST** /characters/{character_id}/assets/locations/ | Get character asset locations |
| [**post_characters_character_id_assets_names**](AssetsApi.md#post_characters_character_id_assets_names) | **POST** /characters/{character_id}/assets/names/ | Get character asset names |
| [**post_corporations_corporation_id_assets_locations**](AssetsApi.md#post_corporations_corporation_id_assets_locations) | **POST** /corporations/{corporation_id}/assets/locations/ | Get corporation asset locations |
| [**post_corporations_corporation_id_assets_names**](AssetsApi.md#post_corporations_corporation_id_assets_names) | **POST** /corporations/{corporation_id}/assets/names/ | Get corporation asset names |


## get_characters_character_id_assets

> <Array<GetCharactersCharacterIdAssets200Ok>> get_characters_character_id_assets(character_id, opts)

Get character assets

Return a list of the characters assets  --- Alternate route: `/dev/characters/{character_id}/assets/`  Alternate route: `/v5/characters/{character_id}/assets/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::AssetsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character assets
  result = api_instance.get_characters_character_id_assets(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->get_characters_character_id_assets: #{e}"
end
```

#### Using the get_characters_character_id_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdAssets200Ok>>, Integer, Hash)> get_characters_character_id_assets_with_http_info(character_id, opts)

```ruby
begin
  # Get character assets
  data, status_code, headers = api_instance.get_characters_character_id_assets_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdAssets200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->get_characters_character_id_assets_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdAssets200Ok&gt;**](GetCharactersCharacterIdAssets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_assets

> <Array<GetCorporationsCorporationIdAssets200Ok>> get_corporations_corporation_id_assets(corporation_id, opts)

Get corporation assets

Return a list of the corporation assets  --- Alternate route: `/dev/corporations/{corporation_id}/assets/`  Alternate route: `/v5/corporations/{corporation_id}/assets/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::AssetsApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation assets
  result = api_instance.get_corporations_corporation_id_assets(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->get_corporations_corporation_id_assets: #{e}"
end
```

#### Using the get_corporations_corporation_id_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdAssets200Ok>>, Integer, Hash)> get_corporations_corporation_id_assets_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation assets
  data, status_code, headers = api_instance.get_corporations_corporation_id_assets_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdAssets200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->get_corporations_corporation_id_assets_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdAssets200Ok&gt;**](GetCorporationsCorporationIdAssets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_character_id_assets_locations

> <Array<PostCharactersCharacterIdAssetsLocations200Ok>> post_characters_character_id_assets_locations(character_id, item_ids, opts)

Get character asset locations

Return locations for a set of item ids, which you can get from character assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)  --- Alternate route: `/dev/characters/{character_id}/assets/locations/`  Alternate route: `/v2/characters/{character_id}/assets/locations/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::AssetsApi.new
character_id = 56 # Integer | An EVE character ID
item_ids = [3.56] # Array<Integer> | A list of item ids
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character asset locations
  result = api_instance.post_characters_character_id_assets_locations(character_id, item_ids, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_locations: #{e}"
end
```

#### Using the post_characters_character_id_assets_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PostCharactersCharacterIdAssetsLocations200Ok>>, Integer, Hash)> post_characters_character_id_assets_locations_with_http_info(character_id, item_ids, opts)

```ruby
begin
  # Get character asset locations
  data, status_code, headers = api_instance.post_characters_character_id_assets_locations_with_http_info(character_id, item_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PostCharactersCharacterIdAssetsLocations200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **item_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of item ids |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;PostCharactersCharacterIdAssetsLocations200Ok&gt;**](PostCharactersCharacterIdAssetsLocations200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_characters_character_id_assets_names

> <Array<PostCharactersCharacterIdAssetsNames200Ok>> post_characters_character_id_assets_names(character_id, item_ids, opts)

Get character asset names

Return names for a set of item ids, which you can get from character assets endpoint. Typically used for items that can customize names, like containers or ships.  --- Alternate route: `/dev/characters/{character_id}/assets/names/`  Alternate route: `/legacy/characters/{character_id}/assets/names/`  Alternate route: `/v1/characters/{character_id}/assets/names/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::AssetsApi.new
character_id = 56 # Integer | An EVE character ID
item_ids = [3.56] # Array<Integer> | A list of item ids
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character asset names
  result = api_instance.post_characters_character_id_assets_names(character_id, item_ids, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_names: #{e}"
end
```

#### Using the post_characters_character_id_assets_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PostCharactersCharacterIdAssetsNames200Ok>>, Integer, Hash)> post_characters_character_id_assets_names_with_http_info(character_id, item_ids, opts)

```ruby
begin
  # Get character asset names
  data, status_code, headers = api_instance.post_characters_character_id_assets_names_with_http_info(character_id, item_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PostCharactersCharacterIdAssetsNames200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_characters_character_id_assets_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **item_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of item ids |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;PostCharactersCharacterIdAssetsNames200Ok&gt;**](PostCharactersCharacterIdAssetsNames200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_corporations_corporation_id_assets_locations

> <Array<PostCorporationsCorporationIdAssetsLocations200Ok>> post_corporations_corporation_id_assets_locations(corporation_id, item_ids, opts)

Get corporation asset locations

Return locations for a set of item ids, which you can get from corporation assets endpoint. Coordinates for items in hangars or stations are set to (0,0,0)  --- Alternate route: `/dev/corporations/{corporation_id}/assets/locations/`  Alternate route: `/v2/corporations/{corporation_id}/assets/locations/`   --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::AssetsApi.new
corporation_id = 56 # Integer | An EVE corporation ID
item_ids = [3.56] # Array<Integer> | A list of item ids
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation asset locations
  result = api_instance.post_corporations_corporation_id_assets_locations(corporation_id, item_ids, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_locations: #{e}"
end
```

#### Using the post_corporations_corporation_id_assets_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PostCorporationsCorporationIdAssetsLocations200Ok>>, Integer, Hash)> post_corporations_corporation_id_assets_locations_with_http_info(corporation_id, item_ids, opts)

```ruby
begin
  # Get corporation asset locations
  data, status_code, headers = api_instance.post_corporations_corporation_id_assets_locations_with_http_info(corporation_id, item_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PostCorporationsCorporationIdAssetsLocations200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **item_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of item ids |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;PostCorporationsCorporationIdAssetsLocations200Ok&gt;**](PostCorporationsCorporationIdAssetsLocations200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_corporations_corporation_id_assets_names

> <Array<PostCorporationsCorporationIdAssetsNames200Ok>> post_corporations_corporation_id_assets_names(corporation_id, item_ids, opts)

Get corporation asset names

Return names for a set of item ids, which you can get from corporation assets endpoint. Only valid for items that can customize names, like containers or ships  --- Alternate route: `/dev/corporations/{corporation_id}/assets/names/`  Alternate route: `/legacy/corporations/{corporation_id}/assets/names/`  Alternate route: `/v1/corporations/{corporation_id}/assets/names/`   --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::AssetsApi.new
corporation_id = 56 # Integer | An EVE corporation ID
item_ids = [3.56] # Array<Integer> | A list of item ids
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation asset names
  result = api_instance.post_corporations_corporation_id_assets_names(corporation_id, item_ids, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_names: #{e}"
end
```

#### Using the post_corporations_corporation_id_assets_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PostCorporationsCorporationIdAssetsNames200Ok>>, Integer, Hash)> post_corporations_corporation_id_assets_names_with_http_info(corporation_id, item_ids, opts)

```ruby
begin
  # Get corporation asset names
  data, status_code, headers = api_instance.post_corporations_corporation_id_assets_names_with_http_info(corporation_id, item_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PostCorporationsCorporationIdAssetsNames200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AssetsApi->post_corporations_corporation_id_assets_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **item_ids** | [**Array&lt;Integer&gt;**](Integer.md) | A list of item ids |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;PostCorporationsCorporationIdAssetsNames200Ok&gt;**](PostCorporationsCorporationIdAssetsNames200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

