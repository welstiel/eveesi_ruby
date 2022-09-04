# RubyEveesiClient::AllianceApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_alliances**](AllianceApi.md#get_alliances) | **GET** /alliances/ | List all alliances |
| [**get_alliances_alliance_id**](AllianceApi.md#get_alliances_alliance_id) | **GET** /alliances/{alliance_id}/ | Get alliance information |
| [**get_alliances_alliance_id_corporations**](AllianceApi.md#get_alliances_alliance_id_corporations) | **GET** /alliances/{alliance_id}/corporations/ | List alliance&#39;s corporations |
| [**get_alliances_alliance_id_icons**](AllianceApi.md#get_alliances_alliance_id_icons) | **GET** /alliances/{alliance_id}/icons/ | Get alliance icon |


## get_alliances

> Array&lt;Integer&gt; get_alliances(opts)

List all alliances

List all active player alliances  --- Alternate route: `/dev/alliances/`  Alternate route: `/legacy/alliances/`  Alternate route: `/v1/alliances/`  Alternate route: `/v2/alliances/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::AllianceApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List all alliances
  result = api_instance.get_alliances(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances: #{e}"
end
```

#### Using the get_alliances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_alliances_with_http_info(opts)

```ruby
begin
  # List all alliances
  data, status_code, headers = api_instance.get_alliances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id

> <GetAlliancesAllianceIdOk> get_alliances_alliance_id(alliance_id, opts)

Get alliance information

Public information about an alliance  --- Alternate route: `/dev/alliances/{alliance_id}/`  Alternate route: `/legacy/alliances/{alliance_id}/`  Alternate route: `/v3/alliances/{alliance_id}/`  Alternate route: `/v4/alliances/{alliance_id}/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::AllianceApi.new
alliance_id = 56 # Integer | An EVE alliance ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get alliance information
  result = api_instance.get_alliances_alliance_id(alliance_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id: #{e}"
end
```

#### Using the get_alliances_alliance_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAlliancesAllianceIdOk>, Integer, Hash)> get_alliances_alliance_id_with_http_info(alliance_id, opts)

```ruby
begin
  # Get alliance information
  data, status_code, headers = api_instance.get_alliances_alliance_id_with_http_info(alliance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAlliancesAllianceIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | An EVE alliance ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetAlliancesAllianceIdOk**](GetAlliancesAllianceIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id_corporations

> Array&lt;Integer&gt; get_alliances_alliance_id_corporations(alliance_id, opts)

List alliance's corporations

List all current member corporations of an alliance  --- Alternate route: `/dev/alliances/{alliance_id}/corporations/`  Alternate route: `/legacy/alliances/{alliance_id}/corporations/`  Alternate route: `/v1/alliances/{alliance_id}/corporations/`  Alternate route: `/v2/alliances/{alliance_id}/corporations/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::AllianceApi.new
alliance_id = 56 # Integer | An EVE alliance ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List alliance's corporations
  result = api_instance.get_alliances_alliance_id_corporations(alliance_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_corporations: #{e}"
end
```

#### Using the get_alliances_alliance_id_corporations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_alliances_alliance_id_corporations_with_http_info(alliance_id, opts)

```ruby
begin
  # List alliance's corporations
  data, status_code, headers = api_instance.get_alliances_alliance_id_corporations_with_http_info(alliance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_corporations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | An EVE alliance ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alliances_alliance_id_icons

> <GetAlliancesAllianceIdIconsOk> get_alliances_alliance_id_icons(alliance_id, opts)

Get alliance icon

Get the icon urls for a alliance  --- Alternate route: `/legacy/alliances/{alliance_id}/icons/`  Alternate route: `/v1/alliances/{alliance_id}/icons/`  --- This route expires daily at 11:05  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#GET-/alliances/{alliance_id}/icons/)

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::AllianceApi.new
alliance_id = 56 # Integer | An EVE alliance ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get alliance icon
  result = api_instance.get_alliances_alliance_id_icons(alliance_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_icons: #{e}"
end
```

#### Using the get_alliances_alliance_id_icons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAlliancesAllianceIdIconsOk>, Integer, Hash)> get_alliances_alliance_id_icons_with_http_info(alliance_id, opts)

```ruby
begin
  # Get alliance icon
  data, status_code, headers = api_instance.get_alliances_alliance_id_icons_with_http_info(alliance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAlliancesAllianceIdIconsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling AllianceApi->get_alliances_alliance_id_icons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alliance_id** | **Integer** | An EVE alliance ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetAlliancesAllianceIdIconsOk**](GetAlliancesAllianceIdIconsOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

