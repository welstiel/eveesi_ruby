# RubyEveesiClient::UniverseApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_universe_ancestries**](UniverseApi.md#get_universe_ancestries) | **GET** /universe/ancestries/ | Get ancestries |
| [**get_universe_asteroid_belts_asteroid_belt_id**](UniverseApi.md#get_universe_asteroid_belts_asteroid_belt_id) | **GET** /universe/asteroid_belts/{asteroid_belt_id}/ | Get asteroid belt information |
| [**get_universe_bloodlines**](UniverseApi.md#get_universe_bloodlines) | **GET** /universe/bloodlines/ | Get bloodlines |
| [**get_universe_categories**](UniverseApi.md#get_universe_categories) | **GET** /universe/categories/ | Get item categories |
| [**get_universe_categories_category_id**](UniverseApi.md#get_universe_categories_category_id) | **GET** /universe/categories/{category_id}/ | Get item category information |
| [**get_universe_constellations**](UniverseApi.md#get_universe_constellations) | **GET** /universe/constellations/ | Get constellations |
| [**get_universe_constellations_constellation_id**](UniverseApi.md#get_universe_constellations_constellation_id) | **GET** /universe/constellations/{constellation_id}/ | Get constellation information |
| [**get_universe_factions**](UniverseApi.md#get_universe_factions) | **GET** /universe/factions/ | Get factions |
| [**get_universe_graphics**](UniverseApi.md#get_universe_graphics) | **GET** /universe/graphics/ | Get graphics |
| [**get_universe_graphics_graphic_id**](UniverseApi.md#get_universe_graphics_graphic_id) | **GET** /universe/graphics/{graphic_id}/ | Get graphic information |
| [**get_universe_groups**](UniverseApi.md#get_universe_groups) | **GET** /universe/groups/ | Get item groups |
| [**get_universe_groups_group_id**](UniverseApi.md#get_universe_groups_group_id) | **GET** /universe/groups/{group_id}/ | Get item group information |
| [**get_universe_moons_moon_id**](UniverseApi.md#get_universe_moons_moon_id) | **GET** /universe/moons/{moon_id}/ | Get moon information |
| [**get_universe_planets_planet_id**](UniverseApi.md#get_universe_planets_planet_id) | **GET** /universe/planets/{planet_id}/ | Get planet information |
| [**get_universe_races**](UniverseApi.md#get_universe_races) | **GET** /universe/races/ | Get character races |
| [**get_universe_regions**](UniverseApi.md#get_universe_regions) | **GET** /universe/regions/ | Get regions |
| [**get_universe_regions_region_id**](UniverseApi.md#get_universe_regions_region_id) | **GET** /universe/regions/{region_id}/ | Get region information |
| [**get_universe_stargates_stargate_id**](UniverseApi.md#get_universe_stargates_stargate_id) | **GET** /universe/stargates/{stargate_id}/ | Get stargate information |
| [**get_universe_stars_star_id**](UniverseApi.md#get_universe_stars_star_id) | **GET** /universe/stars/{star_id}/ | Get star information |
| [**get_universe_stations_station_id**](UniverseApi.md#get_universe_stations_station_id) | **GET** /universe/stations/{station_id}/ | Get station information |
| [**get_universe_structures**](UniverseApi.md#get_universe_structures) | **GET** /universe/structures/ | List all public structures |
| [**get_universe_structures_structure_id**](UniverseApi.md#get_universe_structures_structure_id) | **GET** /universe/structures/{structure_id}/ | Get structure information |
| [**get_universe_system_jumps**](UniverseApi.md#get_universe_system_jumps) | **GET** /universe/system_jumps/ | Get system jumps |
| [**get_universe_system_kills**](UniverseApi.md#get_universe_system_kills) | **GET** /universe/system_kills/ | Get system kills |
| [**get_universe_systems**](UniverseApi.md#get_universe_systems) | **GET** /universe/systems/ | Get solar systems |
| [**get_universe_systems_system_id**](UniverseApi.md#get_universe_systems_system_id) | **GET** /universe/systems/{system_id}/ | Get solar system information |
| [**get_universe_types**](UniverseApi.md#get_universe_types) | **GET** /universe/types/ | Get types |
| [**get_universe_types_type_id**](UniverseApi.md#get_universe_types_type_id) | **GET** /universe/types/{type_id}/ | Get type information |
| [**post_universe_ids**](UniverseApi.md#post_universe_ids) | **POST** /universe/ids/ | Bulk names to IDs |
| [**post_universe_names**](UniverseApi.md#post_universe_names) | **POST** /universe/names/ | Get names and categories for a set of IDs |


## get_universe_ancestries

> <Array<GetUniverseAncestries200Ok>> get_universe_ancestries(opts)

Get ancestries

Get all character ancestries  --- Alternate route: `/legacy/universe/ancestries/`  Alternate route: `/v1/universe/ancestries/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get ancestries
  result = api_instance.get_universe_ancestries(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_ancestries: #{e}"
end
```

#### Using the get_universe_ancestries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUniverseAncestries200Ok>>, Integer, Hash)> get_universe_ancestries_with_http_info(opts)

```ruby
begin
  # Get ancestries
  data, status_code, headers = api_instance.get_universe_ancestries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUniverseAncestries200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_ancestries_with_http_info: #{e}"
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

[**Array&lt;GetUniverseAncestries200Ok&gt;**](GetUniverseAncestries200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_asteroid_belts_asteroid_belt_id

> <GetUniverseAsteroidBeltsAsteroidBeltIdOk> get_universe_asteroid_belts_asteroid_belt_id(asteroid_belt_id, opts)

Get asteroid belt information

Get information on an asteroid belt  --- Alternate route: `/legacy/universe/asteroid_belts/{asteroid_belt_id}/`  Alternate route: `/v1/universe/asteroid_belts/{asteroid_belt_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
asteroid_belt_id = 56 # Integer | asteroid_belt_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get asteroid belt information
  result = api_instance.get_universe_asteroid_belts_asteroid_belt_id(asteroid_belt_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_asteroid_belts_asteroid_belt_id: #{e}"
end
```

#### Using the get_universe_asteroid_belts_asteroid_belt_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseAsteroidBeltsAsteroidBeltIdOk>, Integer, Hash)> get_universe_asteroid_belts_asteroid_belt_id_with_http_info(asteroid_belt_id, opts)

```ruby
begin
  # Get asteroid belt information
  data, status_code, headers = api_instance.get_universe_asteroid_belts_asteroid_belt_id_with_http_info(asteroid_belt_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseAsteroidBeltsAsteroidBeltIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_asteroid_belts_asteroid_belt_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asteroid_belt_id** | **Integer** | asteroid_belt_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniverseAsteroidBeltsAsteroidBeltIdOk**](GetUniverseAsteroidBeltsAsteroidBeltIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_bloodlines

> <Array<GetUniverseBloodlines200Ok>> get_universe_bloodlines(opts)

Get bloodlines

Get a list of bloodlines  --- Alternate route: `/legacy/universe/bloodlines/`  Alternate route: `/v1/universe/bloodlines/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get bloodlines
  result = api_instance.get_universe_bloodlines(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_bloodlines: #{e}"
end
```

#### Using the get_universe_bloodlines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUniverseBloodlines200Ok>>, Integer, Hash)> get_universe_bloodlines_with_http_info(opts)

```ruby
begin
  # Get bloodlines
  data, status_code, headers = api_instance.get_universe_bloodlines_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUniverseBloodlines200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_bloodlines_with_http_info: #{e}"
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

[**Array&lt;GetUniverseBloodlines200Ok&gt;**](GetUniverseBloodlines200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_categories

> Array&lt;Integer&gt; get_universe_categories(opts)

Get item categories

Get a list of item categories  --- Alternate route: `/legacy/universe/categories/`  Alternate route: `/v1/universe/categories/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get item categories
  result = api_instance.get_universe_categories(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories: #{e}"
end
```

#### Using the get_universe_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_categories_with_http_info(opts)

```ruby
begin
  # Get item categories
  data, status_code, headers = api_instance.get_universe_categories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories_with_http_info: #{e}"
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


## get_universe_categories_category_id

> <GetUniverseCategoriesCategoryIdOk> get_universe_categories_category_id(category_id, opts)

Get item category information

Get information of an item category  --- Alternate route: `/legacy/universe/categories/{category_id}/`  Alternate route: `/v1/universe/categories/{category_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
category_id = 56 # Integer | An Eve item category ID
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get item category information
  result = api_instance.get_universe_categories_category_id(category_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories_category_id: #{e}"
end
```

#### Using the get_universe_categories_category_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseCategoriesCategoryIdOk>, Integer, Hash)> get_universe_categories_category_id_with_http_info(category_id, opts)

```ruby
begin
  # Get item category information
  data, status_code, headers = api_instance.get_universe_categories_category_id_with_http_info(category_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseCategoriesCategoryIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_categories_category_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **Integer** | An Eve item category ID |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**GetUniverseCategoriesCategoryIdOk**](GetUniverseCategoriesCategoryIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_constellations

> Array&lt;Integer&gt; get_universe_constellations(opts)

Get constellations

Get a list of constellations  --- Alternate route: `/legacy/universe/constellations/`  Alternate route: `/v1/universe/constellations/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get constellations
  result = api_instance.get_universe_constellations(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations: #{e}"
end
```

#### Using the get_universe_constellations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_constellations_with_http_info(opts)

```ruby
begin
  # Get constellations
  data, status_code, headers = api_instance.get_universe_constellations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations_with_http_info: #{e}"
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


## get_universe_constellations_constellation_id

> <GetUniverseConstellationsConstellationIdOk> get_universe_constellations_constellation_id(constellation_id, opts)

Get constellation information

Get information on a constellation  --- Alternate route: `/legacy/universe/constellations/{constellation_id}/`  Alternate route: `/v1/universe/constellations/{constellation_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
constellation_id = 56 # Integer | constellation_id integer
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get constellation information
  result = api_instance.get_universe_constellations_constellation_id(constellation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations_constellation_id: #{e}"
end
```

#### Using the get_universe_constellations_constellation_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseConstellationsConstellationIdOk>, Integer, Hash)> get_universe_constellations_constellation_id_with_http_info(constellation_id, opts)

```ruby
begin
  # Get constellation information
  data, status_code, headers = api_instance.get_universe_constellations_constellation_id_with_http_info(constellation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseConstellationsConstellationIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_constellations_constellation_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **constellation_id** | **Integer** | constellation_id integer |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**GetUniverseConstellationsConstellationIdOk**](GetUniverseConstellationsConstellationIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_factions

> <Array<GetUniverseFactions200Ok>> get_universe_factions(opts)

Get factions

Get a list of factions  --- Alternate route: `/dev/universe/factions/`  Alternate route: `/v2/universe/factions/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get factions
  result = api_instance.get_universe_factions(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_factions: #{e}"
end
```

#### Using the get_universe_factions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUniverseFactions200Ok>>, Integer, Hash)> get_universe_factions_with_http_info(opts)

```ruby
begin
  # Get factions
  data, status_code, headers = api_instance.get_universe_factions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUniverseFactions200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_factions_with_http_info: #{e}"
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

[**Array&lt;GetUniverseFactions200Ok&gt;**](GetUniverseFactions200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_graphics

> Array&lt;Integer&gt; get_universe_graphics(opts)

Get graphics

Get a list of graphics  --- Alternate route: `/legacy/universe/graphics/`  Alternate route: `/v1/universe/graphics/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get graphics
  result = api_instance.get_universe_graphics(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics: #{e}"
end
```

#### Using the get_universe_graphics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_graphics_with_http_info(opts)

```ruby
begin
  # Get graphics
  data, status_code, headers = api_instance.get_universe_graphics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics_with_http_info: #{e}"
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


## get_universe_graphics_graphic_id

> <GetUniverseGraphicsGraphicIdOk> get_universe_graphics_graphic_id(graphic_id, opts)

Get graphic information

Get information on a graphic  --- Alternate route: `/dev/universe/graphics/{graphic_id}/`  Alternate route: `/legacy/universe/graphics/{graphic_id}/`  Alternate route: `/v1/universe/graphics/{graphic_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
graphic_id = 56 # Integer | graphic_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get graphic information
  result = api_instance.get_universe_graphics_graphic_id(graphic_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics_graphic_id: #{e}"
end
```

#### Using the get_universe_graphics_graphic_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseGraphicsGraphicIdOk>, Integer, Hash)> get_universe_graphics_graphic_id_with_http_info(graphic_id, opts)

```ruby
begin
  # Get graphic information
  data, status_code, headers = api_instance.get_universe_graphics_graphic_id_with_http_info(graphic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseGraphicsGraphicIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_graphics_graphic_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **graphic_id** | **Integer** | graphic_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniverseGraphicsGraphicIdOk**](GetUniverseGraphicsGraphicIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_groups

> Array&lt;Integer&gt; get_universe_groups(opts)

Get item groups

Get a list of item groups  --- Alternate route: `/legacy/universe/groups/`  Alternate route: `/v1/universe/groups/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56 # Integer | Which page of results to return
}

begin
  # Get item groups
  result = api_instance.get_universe_groups(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups: #{e}"
end
```

#### Using the get_universe_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_groups_with_http_info(opts)

```ruby
begin
  # Get item groups
  data, status_code, headers = api_instance.get_universe_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_groups_group_id

> <GetUniverseGroupsGroupIdOk> get_universe_groups_group_id(group_id, opts)

Get item group information

Get information on an item group  --- Alternate route: `/dev/universe/groups/{group_id}/`  Alternate route: `/legacy/universe/groups/{group_id}/`  Alternate route: `/v1/universe/groups/{group_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
group_id = 56 # Integer | An Eve item group ID
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get item group information
  result = api_instance.get_universe_groups_group_id(group_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups_group_id: #{e}"
end
```

#### Using the get_universe_groups_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseGroupsGroupIdOk>, Integer, Hash)> get_universe_groups_group_id_with_http_info(group_id, opts)

```ruby
begin
  # Get item group information
  data, status_code, headers = api_instance.get_universe_groups_group_id_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseGroupsGroupIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_groups_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **Integer** | An Eve item group ID |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**GetUniverseGroupsGroupIdOk**](GetUniverseGroupsGroupIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_moons_moon_id

> <GetUniverseMoonsMoonIdOk> get_universe_moons_moon_id(moon_id, opts)

Get moon information

Get information on a moon  --- Alternate route: `/legacy/universe/moons/{moon_id}/`  Alternate route: `/v1/universe/moons/{moon_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
moon_id = 56 # Integer | moon_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get moon information
  result = api_instance.get_universe_moons_moon_id(moon_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_moons_moon_id: #{e}"
end
```

#### Using the get_universe_moons_moon_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseMoonsMoonIdOk>, Integer, Hash)> get_universe_moons_moon_id_with_http_info(moon_id, opts)

```ruby
begin
  # Get moon information
  data, status_code, headers = api_instance.get_universe_moons_moon_id_with_http_info(moon_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseMoonsMoonIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_moons_moon_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moon_id** | **Integer** | moon_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniverseMoonsMoonIdOk**](GetUniverseMoonsMoonIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_planets_planet_id

> <GetUniversePlanetsPlanetIdOk> get_universe_planets_planet_id(planet_id, opts)

Get planet information

Get information on a planet  --- Alternate route: `/legacy/universe/planets/{planet_id}/`  Alternate route: `/v1/universe/planets/{planet_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
planet_id = 56 # Integer | planet_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get planet information
  result = api_instance.get_universe_planets_planet_id(planet_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_planets_planet_id: #{e}"
end
```

#### Using the get_universe_planets_planet_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniversePlanetsPlanetIdOk>, Integer, Hash)> get_universe_planets_planet_id_with_http_info(planet_id, opts)

```ruby
begin
  # Get planet information
  data, status_code, headers = api_instance.get_universe_planets_planet_id_with_http_info(planet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniversePlanetsPlanetIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_planets_planet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **planet_id** | **Integer** | planet_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniversePlanetsPlanetIdOk**](GetUniversePlanetsPlanetIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_races

> <Array<GetUniverseRaces200Ok>> get_universe_races(opts)

Get character races

Get a list of character races  --- Alternate route: `/dev/universe/races/`  Alternate route: `/legacy/universe/races/`  Alternate route: `/v1/universe/races/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get character races
  result = api_instance.get_universe_races(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_races: #{e}"
end
```

#### Using the get_universe_races_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUniverseRaces200Ok>>, Integer, Hash)> get_universe_races_with_http_info(opts)

```ruby
begin
  # Get character races
  data, status_code, headers = api_instance.get_universe_races_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUniverseRaces200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_races_with_http_info: #{e}"
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

[**Array&lt;GetUniverseRaces200Ok&gt;**](GetUniverseRaces200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_regions

> Array&lt;Integer&gt; get_universe_regions(opts)

Get regions

Get a list of regions  --- Alternate route: `/legacy/universe/regions/`  Alternate route: `/v1/universe/regions/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get regions
  result = api_instance.get_universe_regions(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions: #{e}"
end
```

#### Using the get_universe_regions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_regions_with_http_info(opts)

```ruby
begin
  # Get regions
  data, status_code, headers = api_instance.get_universe_regions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions_with_http_info: #{e}"
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


## get_universe_regions_region_id

> <GetUniverseRegionsRegionIdOk> get_universe_regions_region_id(region_id, opts)

Get region information

Get information on a region  --- Alternate route: `/legacy/universe/regions/{region_id}/`  Alternate route: `/v1/universe/regions/{region_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
region_id = 56 # Integer | region_id integer
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get region information
  result = api_instance.get_universe_regions_region_id(region_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions_region_id: #{e}"
end
```

#### Using the get_universe_regions_region_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseRegionsRegionIdOk>, Integer, Hash)> get_universe_regions_region_id_with_http_info(region_id, opts)

```ruby
begin
  # Get region information
  data, status_code, headers = api_instance.get_universe_regions_region_id_with_http_info(region_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseRegionsRegionIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_regions_region_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_id** | **Integer** | region_id integer |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**GetUniverseRegionsRegionIdOk**](GetUniverseRegionsRegionIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_stargates_stargate_id

> <GetUniverseStargatesStargateIdOk> get_universe_stargates_stargate_id(stargate_id, opts)

Get stargate information

Get information on a stargate  --- Alternate route: `/legacy/universe/stargates/{stargate_id}/`  Alternate route: `/v1/universe/stargates/{stargate_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
stargate_id = 56 # Integer | stargate_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get stargate information
  result = api_instance.get_universe_stargates_stargate_id(stargate_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stargates_stargate_id: #{e}"
end
```

#### Using the get_universe_stargates_stargate_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseStargatesStargateIdOk>, Integer, Hash)> get_universe_stargates_stargate_id_with_http_info(stargate_id, opts)

```ruby
begin
  # Get stargate information
  data, status_code, headers = api_instance.get_universe_stargates_stargate_id_with_http_info(stargate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseStargatesStargateIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stargates_stargate_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stargate_id** | **Integer** | stargate_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniverseStargatesStargateIdOk**](GetUniverseStargatesStargateIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_stars_star_id

> <GetUniverseStarsStarIdOk> get_universe_stars_star_id(star_id, opts)

Get star information

Get information on a star  --- Alternate route: `/legacy/universe/stars/{star_id}/`  Alternate route: `/v1/universe/stars/{star_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
star_id = 56 # Integer | star_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get star information
  result = api_instance.get_universe_stars_star_id(star_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stars_star_id: #{e}"
end
```

#### Using the get_universe_stars_star_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseStarsStarIdOk>, Integer, Hash)> get_universe_stars_star_id_with_http_info(star_id, opts)

```ruby
begin
  # Get star information
  data, status_code, headers = api_instance.get_universe_stars_star_id_with_http_info(star_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseStarsStarIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stars_star_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **star_id** | **Integer** | star_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniverseStarsStarIdOk**](GetUniverseStarsStarIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_stations_station_id

> <GetUniverseStationsStationIdOk> get_universe_stations_station_id(station_id, opts)

Get station information

Get information on a station  --- Alternate route: `/dev/universe/stations/{station_id}/`  Alternate route: `/v2/universe/stations/{station_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
station_id = 56 # Integer | station_id integer
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get station information
  result = api_instance.get_universe_stations_station_id(station_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stations_station_id: #{e}"
end
```

#### Using the get_universe_stations_station_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseStationsStationIdOk>, Integer, Hash)> get_universe_stations_station_id_with_http_info(station_id, opts)

```ruby
begin
  # Get station information
  data, status_code, headers = api_instance.get_universe_stations_station_id_with_http_info(station_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseStationsStationIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_stations_station_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **station_id** | **Integer** | station_id integer |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniverseStationsStationIdOk**](GetUniverseStationsStationIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_structures

> Array&lt;Integer&gt; get_universe_structures(opts)

List all public structures

List all public structures  --- Alternate route: `/dev/universe/structures/`  Alternate route: `/legacy/universe/structures/`  Alternate route: `/v1/universe/structures/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  filter: 'market', # String | Only list public structures that have this service online
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List all public structures
  result = api_instance.get_universe_structures(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures: #{e}"
end
```

#### Using the get_universe_structures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_structures_with_http_info(opts)

```ruby
begin
  # List all public structures
  data, status_code, headers = api_instance.get_universe_structures_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **filter** | **String** | Only list public structures that have this service online | [optional] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_structures_structure_id

> <GetUniverseStructuresStructureIdOk> get_universe_structures_structure_id(structure_id, opts)

Get structure information

Returns information on requested structure if you are on the ACL. Otherwise, returns \"Forbidden\" for all inputs.  --- Alternate route: `/v2/universe/structures/{structure_id}/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::UniverseApi.new
structure_id = 789 # Integer | An Eve structure ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get structure information
  result = api_instance.get_universe_structures_structure_id(structure_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures_structure_id: #{e}"
end
```

#### Using the get_universe_structures_structure_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseStructuresStructureIdOk>, Integer, Hash)> get_universe_structures_structure_id_with_http_info(structure_id, opts)

```ruby
begin
  # Get structure information
  data, status_code, headers = api_instance.get_universe_structures_structure_id_with_http_info(structure_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseStructuresStructureIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_structures_structure_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **structure_id** | **Integer** | An Eve structure ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetUniverseStructuresStructureIdOk**](GetUniverseStructuresStructureIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_system_jumps

> <Array<GetUniverseSystemJumps200Ok>> get_universe_system_jumps(opts)

Get system jumps

Get the number of jumps in solar systems within the last hour ending at the timestamp of the Last-Modified header, excluding wormhole space. Only systems with jumps will be listed  --- Alternate route: `/legacy/universe/system_jumps/`  Alternate route: `/v1/universe/system_jumps/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get system jumps
  result = api_instance.get_universe_system_jumps(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_jumps: #{e}"
end
```

#### Using the get_universe_system_jumps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUniverseSystemJumps200Ok>>, Integer, Hash)> get_universe_system_jumps_with_http_info(opts)

```ruby
begin
  # Get system jumps
  data, status_code, headers = api_instance.get_universe_system_jumps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUniverseSystemJumps200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_jumps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetUniverseSystemJumps200Ok&gt;**](GetUniverseSystemJumps200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_system_kills

> <Array<GetUniverseSystemKills200Ok>> get_universe_system_kills(opts)

Get system kills

Get the number of ship, pod and NPC kills per solar system within the last hour ending at the timestamp of the Last-Modified header, excluding wormhole space. Only systems with kills will be listed  --- Alternate route: `/v2/universe/system_kills/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get system kills
  result = api_instance.get_universe_system_kills(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_kills: #{e}"
end
```

#### Using the get_universe_system_kills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUniverseSystemKills200Ok>>, Integer, Hash)> get_universe_system_kills_with_http_info(opts)

```ruby
begin
  # Get system kills
  data, status_code, headers = api_instance.get_universe_system_kills_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUniverseSystemKills200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_system_kills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetUniverseSystemKills200Ok&gt;**](GetUniverseSystemKills200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_systems

> Array&lt;Integer&gt; get_universe_systems(opts)

Get solar systems

Get a list of solar systems  --- Alternate route: `/dev/universe/systems/`  Alternate route: `/legacy/universe/systems/`  Alternate route: `/v1/universe/systems/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get solar systems
  result = api_instance.get_universe_systems(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems: #{e}"
end
```

#### Using the get_universe_systems_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_systems_with_http_info(opts)

```ruby
begin
  # Get solar systems
  data, status_code, headers = api_instance.get_universe_systems_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems_with_http_info: #{e}"
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


## get_universe_systems_system_id

> <GetUniverseSystemsSystemIdOk> get_universe_systems_system_id(system_id, opts)

Get solar system information

Get information on a solar system.  --- Alternate route: `/dev/universe/systems/{system_id}/`  Alternate route: `/v4/universe/systems/{system_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
system_id = 56 # Integer | system_id integer
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get solar system information
  result = api_instance.get_universe_systems_system_id(system_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems_system_id: #{e}"
end
```

#### Using the get_universe_systems_system_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseSystemsSystemIdOk>, Integer, Hash)> get_universe_systems_system_id_with_http_info(system_id, opts)

```ruby
begin
  # Get solar system information
  data, status_code, headers = api_instance.get_universe_systems_system_id_with_http_info(system_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseSystemsSystemIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_systems_system_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_id** | **Integer** | system_id integer |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**GetUniverseSystemsSystemIdOk**](GetUniverseSystemsSystemIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_types

> Array&lt;Integer&gt; get_universe_types(opts)

Get types

Get a list of type ids  --- Alternate route: `/legacy/universe/types/`  Alternate route: `/v1/universe/types/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56 # Integer | Which page of results to return
}

begin
  # Get types
  result = api_instance.get_universe_types(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types: #{e}"
end
```

#### Using the get_universe_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_universe_types_with_http_info(opts)

```ruby
begin
  # Get types
  data, status_code, headers = api_instance.get_universe_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_types_type_id

> <GetUniverseTypesTypeIdOk> get_universe_types_type_id(type_id, opts)

Get type information

Get information on a type  --- Alternate route: `/dev/universe/types/{type_id}/`  Alternate route: `/v3/universe/types/{type_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
type_id = 56 # Integer | An Eve item type ID
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get type information
  result = api_instance.get_universe_types_type_id(type_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types_type_id: #{e}"
end
```

#### Using the get_universe_types_type_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseTypesTypeIdOk>, Integer, Hash)> get_universe_types_type_id_with_http_info(type_id, opts)

```ruby
begin
  # Get type information
  data, status_code, headers = api_instance.get_universe_types_type_id_with_http_info(type_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseTypesTypeIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->get_universe_types_type_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_id** | **Integer** | An Eve item type ID |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**GetUniverseTypesTypeIdOk**](GetUniverseTypesTypeIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_universe_ids

> <PostUniverseIdsOk> post_universe_ids(names, opts)

Bulk names to IDs

Resolve a set of names to IDs in the following categories: agents, alliances, characters, constellations, corporations factions, inventory_types, regions, stations, and systems. Only exact matches will be returned. All names searched for are cached for 12 hours  --- Alternate route: `/dev/universe/ids/`  Alternate route: `/legacy/universe/ids/`  Alternate route: `/v1/universe/ids/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
names = ['property_example'] # Array<String> | The names to resolve
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Bulk names to IDs
  result = api_instance.post_universe_ids(names, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->post_universe_ids: #{e}"
end
```

#### Using the post_universe_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostUniverseIdsOk>, Integer, Hash)> post_universe_ids_with_http_info(names, opts)

```ruby
begin
  # Bulk names to IDs
  data, status_code, headers = api_instance.post_universe_ids_with_http_info(names, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostUniverseIdsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->post_universe_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **names** | [**Array&lt;String&gt;**](String.md) | The names to resolve |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**PostUniverseIdsOk**](PostUniverseIdsOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_universe_names

> <Array<PostUniverseNames200Ok>> post_universe_names(ids, opts)

Get names and categories for a set of IDs

Resolve a set of IDs to names and categories. Supported ID's for resolving are: Characters, Corporations, Alliances, Stations, Solar Systems, Constellations, Regions, Types, Factions  --- Alternate route: `/dev/universe/names/`  Alternate route: `/v3/universe/names/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::UniverseApi.new
ids = [37] # Array<Integer> | The ids to resolve
opts = {
  datasource: 'tranquility' # String | The server name you would like data from
}

begin
  # Get names and categories for a set of IDs
  result = api_instance.post_universe_names(ids, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->post_universe_names: #{e}"
end
```

#### Using the post_universe_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PostUniverseNames200Ok>>, Integer, Hash)> post_universe_names_with_http_info(ids, opts)

```ruby
begin
  # Get names and categories for a set of IDs
  data, status_code, headers = api_instance.post_universe_names_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PostUniverseNames200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling UniverseApi->post_universe_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;Integer&gt;**](Integer.md) | The ids to resolve |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |

### Return type

[**Array&lt;PostUniverseNames200Ok&gt;**](PostUniverseNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

