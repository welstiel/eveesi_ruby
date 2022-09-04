# RubyEveesiClient::DogmaApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_dogma_attributes**](DogmaApi.md#get_dogma_attributes) | **GET** /dogma/attributes/ | Get attributes |
| [**get_dogma_attributes_attribute_id**](DogmaApi.md#get_dogma_attributes_attribute_id) | **GET** /dogma/attributes/{attribute_id}/ | Get attribute information |
| [**get_dogma_dynamic_items_type_id_item_id**](DogmaApi.md#get_dogma_dynamic_items_type_id_item_id) | **GET** /dogma/dynamic/items/{type_id}/{item_id}/ | Get dynamic item information |
| [**get_dogma_effects**](DogmaApi.md#get_dogma_effects) | **GET** /dogma/effects/ | Get effects |
| [**get_dogma_effects_effect_id**](DogmaApi.md#get_dogma_effects_effect_id) | **GET** /dogma/effects/{effect_id}/ | Get effect information |


## get_dogma_attributes

> Array&lt;Integer&gt; get_dogma_attributes(opts)

Get attributes

Get a list of dogma attribute ids  --- Alternate route: `/dev/dogma/attributes/`  Alternate route: `/legacy/dogma/attributes/`  Alternate route: `/v1/dogma/attributes/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::DogmaApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get attributes
  result = api_instance.get_dogma_attributes(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes: #{e}"
end
```

#### Using the get_dogma_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_dogma_attributes_with_http_info(opts)

```ruby
begin
  # Get attributes
  data, status_code, headers = api_instance.get_dogma_attributes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes_with_http_info: #{e}"
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


## get_dogma_attributes_attribute_id

> <GetDogmaAttributesAttributeIdOk> get_dogma_attributes_attribute_id(attribute_id, opts)

Get attribute information

Get information on a dogma attribute  --- Alternate route: `/dev/dogma/attributes/{attribute_id}/`  Alternate route: `/legacy/dogma/attributes/{attribute_id}/`  Alternate route: `/v1/dogma/attributes/{attribute_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::DogmaApi.new
attribute_id = 56 # Integer | A dogma attribute ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get attribute information
  result = api_instance.get_dogma_attributes_attribute_id(attribute_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes_attribute_id: #{e}"
end
```

#### Using the get_dogma_attributes_attribute_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDogmaAttributesAttributeIdOk>, Integer, Hash)> get_dogma_attributes_attribute_id_with_http_info(attribute_id, opts)

```ruby
begin
  # Get attribute information
  data, status_code, headers = api_instance.get_dogma_attributes_attribute_id_with_http_info(attribute_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDogmaAttributesAttributeIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_attributes_attribute_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute_id** | **Integer** | A dogma attribute ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetDogmaAttributesAttributeIdOk**](GetDogmaAttributesAttributeIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dogma_dynamic_items_type_id_item_id

> <GetDogmaDynamicItemsTypeIdItemIdOk> get_dogma_dynamic_items_type_id_item_id(item_id, type_id, opts)

Get dynamic item information

Returns info about a dynamic item resulting from mutation with a mutaplasmid.  --- Alternate route: `/dev/dogma/dynamic/items/{type_id}/{item_id}/`  Alternate route: `/legacy/dogma/dynamic/items/{type_id}/{item_id}/`  Alternate route: `/v1/dogma/dynamic/items/{type_id}/{item_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::DogmaApi.new
item_id = 789 # Integer | item_id integer
type_id = 56 # Integer | type_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get dynamic item information
  result = api_instance.get_dogma_dynamic_items_type_id_item_id(item_id, type_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_dynamic_items_type_id_item_id: #{e}"
end
```

#### Using the get_dogma_dynamic_items_type_id_item_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDogmaDynamicItemsTypeIdItemIdOk>, Integer, Hash)> get_dogma_dynamic_items_type_id_item_id_with_http_info(item_id, type_id, opts)

```ruby
begin
  # Get dynamic item information
  data, status_code, headers = api_instance.get_dogma_dynamic_items_type_id_item_id_with_http_info(item_id, type_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDogmaDynamicItemsTypeIdItemIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_dynamic_items_type_id_item_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **Integer** | item_id integer |  |
| **type_id** | **Integer** | type_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetDogmaDynamicItemsTypeIdItemIdOk**](GetDogmaDynamicItemsTypeIdItemIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dogma_effects

> Array&lt;Integer&gt; get_dogma_effects(opts)

Get effects

Get a list of dogma effect ids  --- Alternate route: `/dev/dogma/effects/`  Alternate route: `/legacy/dogma/effects/`  Alternate route: `/v1/dogma/effects/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::DogmaApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get effects
  result = api_instance.get_dogma_effects(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects: #{e}"
end
```

#### Using the get_dogma_effects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_dogma_effects_with_http_info(opts)

```ruby
begin
  # Get effects
  data, status_code, headers = api_instance.get_dogma_effects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects_with_http_info: #{e}"
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


## get_dogma_effects_effect_id

> <GetDogmaEffectsEffectIdOk> get_dogma_effects_effect_id(effect_id, opts)

Get effect information

Get information on a dogma effect  --- Alternate route: `/dev/dogma/effects/{effect_id}/`  Alternate route: `/v2/dogma/effects/{effect_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::DogmaApi.new
effect_id = 56 # Integer | A dogma effect ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get effect information
  result = api_instance.get_dogma_effects_effect_id(effect_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects_effect_id: #{e}"
end
```

#### Using the get_dogma_effects_effect_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDogmaEffectsEffectIdOk>, Integer, Hash)> get_dogma_effects_effect_id_with_http_info(effect_id, opts)

```ruby
begin
  # Get effect information
  data, status_code, headers = api_instance.get_dogma_effects_effect_id_with_http_info(effect_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDogmaEffectsEffectIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling DogmaApi->get_dogma_effects_effect_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effect_id** | **Integer** | A dogma effect ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetDogmaEffectsEffectIdOk**](GetDogmaEffectsEffectIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

