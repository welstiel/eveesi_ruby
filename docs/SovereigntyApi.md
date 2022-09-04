# RubyEveesiClient::SovereigntyApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sovereignty_campaigns**](SovereigntyApi.md#get_sovereignty_campaigns) | **GET** /sovereignty/campaigns/ | List sovereignty campaigns |
| [**get_sovereignty_map**](SovereigntyApi.md#get_sovereignty_map) | **GET** /sovereignty/map/ | List sovereignty of systems |
| [**get_sovereignty_structures**](SovereigntyApi.md#get_sovereignty_structures) | **GET** /sovereignty/structures/ | List sovereignty structures |


## get_sovereignty_campaigns

> <Array<GetSovereigntyCampaigns200Ok>> get_sovereignty_campaigns(opts)

List sovereignty campaigns

Shows sovereignty data for campaigns.  --- Alternate route: `/dev/sovereignty/campaigns/`  Alternate route: `/legacy/sovereignty/campaigns/`  Alternate route: `/v1/sovereignty/campaigns/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::SovereigntyApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List sovereignty campaigns
  result = api_instance.get_sovereignty_campaigns(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_campaigns: #{e}"
end
```

#### Using the get_sovereignty_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetSovereigntyCampaigns200Ok>>, Integer, Hash)> get_sovereignty_campaigns_with_http_info(opts)

```ruby
begin
  # List sovereignty campaigns
  data, status_code, headers = api_instance.get_sovereignty_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetSovereigntyCampaigns200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetSovereigntyCampaigns200Ok&gt;**](GetSovereigntyCampaigns200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sovereignty_map

> <Array<GetSovereigntyMap200Ok>> get_sovereignty_map(opts)

List sovereignty of systems

Shows sovereignty information for solar systems  --- Alternate route: `/dev/sovereignty/map/`  Alternate route: `/legacy/sovereignty/map/`  Alternate route: `/v1/sovereignty/map/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::SovereigntyApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List sovereignty of systems
  result = api_instance.get_sovereignty_map(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_map: #{e}"
end
```

#### Using the get_sovereignty_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetSovereigntyMap200Ok>>, Integer, Hash)> get_sovereignty_map_with_http_info(opts)

```ruby
begin
  # List sovereignty of systems
  data, status_code, headers = api_instance.get_sovereignty_map_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetSovereigntyMap200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetSovereigntyMap200Ok&gt;**](GetSovereigntyMap200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sovereignty_structures

> <Array<GetSovereigntyStructures200Ok>> get_sovereignty_structures(opts)

List sovereignty structures

Shows sovereignty data for structures.  --- Alternate route: `/dev/sovereignty/structures/`  Alternate route: `/legacy/sovereignty/structures/`  Alternate route: `/v1/sovereignty/structures/`  --- This route is cached for up to 120 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::SovereigntyApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List sovereignty structures
  result = api_instance.get_sovereignty_structures(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_structures: #{e}"
end
```

#### Using the get_sovereignty_structures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetSovereigntyStructures200Ok>>, Integer, Hash)> get_sovereignty_structures_with_http_info(opts)

```ruby
begin
  # List sovereignty structures
  data, status_code, headers = api_instance.get_sovereignty_structures_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetSovereigntyStructures200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling SovereigntyApi->get_sovereignty_structures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetSovereigntyStructures200Ok&gt;**](GetSovereigntyStructures200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

