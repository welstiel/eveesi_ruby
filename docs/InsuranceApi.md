# RubyEveesiClient::InsuranceApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_insurance_prices**](InsuranceApi.md#get_insurance_prices) | **GET** /insurance/prices/ | List insurance levels |


## get_insurance_prices

> <Array<GetInsurancePrices200Ok>> get_insurance_prices(opts)

List insurance levels

Return available insurance levels for all ship types  --- Alternate route: `/dev/insurance/prices/`  Alternate route: `/legacy/insurance/prices/`  Alternate route: `/v1/insurance/prices/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::InsuranceApi.new
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # List insurance levels
  result = api_instance.get_insurance_prices(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling InsuranceApi->get_insurance_prices: #{e}"
end
```

#### Using the get_insurance_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetInsurancePrices200Ok>>, Integer, Hash)> get_insurance_prices_with_http_info(opts)

```ruby
begin
  # List insurance levels
  data, status_code, headers = api_instance.get_insurance_prices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetInsurancePrices200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling InsuranceApi->get_insurance_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**Array&lt;GetInsurancePrices200Ok&gt;**](GetInsurancePrices200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

