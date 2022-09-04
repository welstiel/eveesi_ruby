# RubyEveesiClient::IncursionsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_incursions**](IncursionsApi.md#get_incursions) | **GET** /incursions/ | List incursions |


## get_incursions

> <Array<GetIncursions200Ok>> get_incursions(opts)

List incursions

Return a list of current incursions  --- Alternate route: `/dev/incursions/`  Alternate route: `/legacy/incursions/`  Alternate route: `/v1/incursions/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::IncursionsApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List incursions
  result = api_instance.get_incursions(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IncursionsApi->get_incursions: #{e}"
end
```

#### Using the get_incursions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetIncursions200Ok>>, Integer, Hash)> get_incursions_with_http_info(opts)

```ruby
begin
  # List incursions
  data, status_code, headers = api_instance.get_incursions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetIncursions200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IncursionsApi->get_incursions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetIncursions200Ok&gt;**](GetIncursions200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

