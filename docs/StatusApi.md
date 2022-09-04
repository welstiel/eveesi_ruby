# RubyEveesiClient::StatusApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_status**](StatusApi.md#get_status) | **GET** /status/ | Retrieve the uptime and player counts |


## get_status

> <GetStatusOk> get_status(opts)

Retrieve the uptime and player counts

EVE Server status  --- Alternate route: `/dev/status/`  Alternate route: `/legacy/status/`  Alternate route: `/v1/status/`  Alternate route: `/v2/status/`  --- This route is cached for up to 30 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::StatusApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Retrieve the uptime and player counts
  result = api_instance.get_status(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling StatusApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatusOk>, Integer, Hash)> get_status_with_http_info(opts)

```ruby
begin
  # Retrieve the uptime and player counts
  data, status_code, headers = api_instance.get_status_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatusOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling StatusApi->get_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetStatusOk**](GetStatusOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

