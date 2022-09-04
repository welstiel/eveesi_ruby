# RubyEveesiClient::WarsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_wars**](WarsApi.md#get_wars) | **GET** /wars/ | List wars |
| [**get_wars_war_id**](WarsApi.md#get_wars_war_id) | **GET** /wars/{war_id}/ | Get war information |
| [**get_wars_war_id_killmails**](WarsApi.md#get_wars_war_id_killmails) | **GET** /wars/{war_id}/killmails/ | List kills for a war |


## get_wars

> Array&lt;Integer&gt; get_wars(opts)

List wars

Return a list of wars  --- Alternate route: `/dev/wars/`  Alternate route: `/legacy/wars/`  Alternate route: `/v1/wars/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::WarsApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  max_war_id: 56 # Integer | Only return wars with ID smaller than this
}

begin
  # List wars
  result = api_instance.get_wars(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WarsApi->get_wars: #{e}"
end
```

#### Using the get_wars_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_wars_with_http_info(opts)

```ruby
begin
  # List wars
  data, status_code, headers = api_instance.get_wars_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WarsApi->get_wars_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **max_war_id** | **Integer** | Only return wars with ID smaller than this | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wars_war_id

> <GetWarsWarIdOk> get_wars_war_id(war_id, opts)

Get war information

Return details about a war  --- Alternate route: `/dev/wars/{war_id}/`  Alternate route: `/legacy/wars/{war_id}/`  Alternate route: `/v1/wars/{war_id}/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::WarsApi.new
war_id = 56 # Integer | ID for a war
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get war information
  result = api_instance.get_wars_war_id(war_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id: #{e}"
end
```

#### Using the get_wars_war_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWarsWarIdOk>, Integer, Hash)> get_wars_war_id_with_http_info(war_id, opts)

```ruby
begin
  # Get war information
  data, status_code, headers = api_instance.get_wars_war_id_with_http_info(war_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWarsWarIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **war_id** | **Integer** | ID for a war |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetWarsWarIdOk**](GetWarsWarIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wars_war_id_killmails

> <Array<GetWarsWarIdKillmails200Ok>> get_wars_war_id_killmails(war_id, opts)

List kills for a war

Return a list of kills related to a war  --- Alternate route: `/dev/wars/{war_id}/killmails/`  Alternate route: `/legacy/wars/{war_id}/killmails/`  Alternate route: `/v1/wars/{war_id}/killmails/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::WarsApi.new
war_id = 56 # Integer | A valid war ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56 # Integer | Which page of results to return
}

begin
  # List kills for a war
  result = api_instance.get_wars_war_id_killmails(war_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id_killmails: #{e}"
end
```

#### Using the get_wars_war_id_killmails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetWarsWarIdKillmails200Ok>>, Integer, Hash)> get_wars_war_id_killmails_with_http_info(war_id, opts)

```ruby
begin
  # List kills for a war
  data, status_code, headers = api_instance.get_wars_war_id_killmails_with_http_info(war_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetWarsWarIdKillmails200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WarsApi->get_wars_war_id_killmails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **war_id** | **Integer** | A valid war ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |

### Return type

[**Array&lt;GetWarsWarIdKillmails200Ok&gt;**](GetWarsWarIdKillmails200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

