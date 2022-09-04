# RubyEveesiClient::PlanetaryInteractionApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_planets**](PlanetaryInteractionApi.md#get_characters_character_id_planets) | **GET** /characters/{character_id}/planets/ | Get colonies |
| [**get_characters_character_id_planets_planet_id**](PlanetaryInteractionApi.md#get_characters_character_id_planets_planet_id) | **GET** /characters/{character_id}/planets/{planet_id}/ | Get colony layout |
| [**get_corporations_corporation_id_customs_offices**](PlanetaryInteractionApi.md#get_corporations_corporation_id_customs_offices) | **GET** /corporations/{corporation_id}/customs_offices/ | List corporation customs offices |
| [**get_universe_schematics_schematic_id**](PlanetaryInteractionApi.md#get_universe_schematics_schematic_id) | **GET** /universe/schematics/{schematic_id}/ | Get schematic information |


## get_characters_character_id_planets

> <Array<GetCharactersCharacterIdPlanets200Ok>> get_characters_character_id_planets(character_id, opts)

Get colonies

Returns a list of all planetary colonies owned by a character.  --- Alternate route: `/dev/characters/{character_id}/planets/`  Alternate route: `/legacy/characters/{character_id}/planets/`  Alternate route: `/v1/characters/{character_id}/planets/`  --- This route is cached for up to 600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::PlanetaryInteractionApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get colonies
  result = api_instance.get_characters_character_id_planets(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets: #{e}"
end
```

#### Using the get_characters_character_id_planets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdPlanets200Ok>>, Integer, Hash)> get_characters_character_id_planets_with_http_info(character_id, opts)

```ruby
begin
  # Get colonies
  data, status_code, headers = api_instance.get_characters_character_id_planets_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdPlanets200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdPlanets200Ok&gt;**](GetCharactersCharacterIdPlanets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_planets_planet_id

> <GetCharactersCharacterIdPlanetsPlanetIdOk> get_characters_character_id_planets_planet_id(character_id, planet_id, opts)

Get colony layout

Returns full details on the layout of a single planetary colony, including links, pins and routes. Note: Planetary information is only recalculated when the colony is viewed through the client. Information will not update until this criteria is met.  --- Alternate route: `/dev/characters/{character_id}/planets/{planet_id}/`  Alternate route: `/v3/characters/{character_id}/planets/{planet_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::PlanetaryInteractionApi.new
character_id = 56 # Integer | An EVE character ID
planet_id = 56 # Integer | Planet id of the target planet
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get colony layout
  result = api_instance.get_characters_character_id_planets_planet_id(character_id, planet_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets_planet_id: #{e}"
end
```

#### Using the get_characters_character_id_planets_planet_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdPlanetsPlanetIdOk>, Integer, Hash)> get_characters_character_id_planets_planet_id_with_http_info(character_id, planet_id, opts)

```ruby
begin
  # Get colony layout
  data, status_code, headers = api_instance.get_characters_character_id_planets_planet_id_with_http_info(character_id, planet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdPlanetsPlanetIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_characters_character_id_planets_planet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **planet_id** | **Integer** | Planet id of the target planet |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetCharactersCharacterIdPlanetsPlanetIdOk**](GetCharactersCharacterIdPlanetsPlanetIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_customs_offices

> <Array<GetCorporationsCorporationIdCustomsOffices200Ok>> get_corporations_corporation_id_customs_offices(corporation_id, opts)

List corporation customs offices

List customs offices owned by a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/customs_offices/`  Alternate route: `/legacy/corporations/{corporation_id}/customs_offices/`  Alternate route: `/v1/corporations/{corporation_id}/customs_offices/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::PlanetaryInteractionApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List corporation customs offices
  result = api_instance.get_corporations_corporation_id_customs_offices(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_corporations_corporation_id_customs_offices: #{e}"
end
```

#### Using the get_corporations_corporation_id_customs_offices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdCustomsOffices200Ok>>, Integer, Hash)> get_corporations_corporation_id_customs_offices_with_http_info(corporation_id, opts)

```ruby
begin
  # List corporation customs offices
  data, status_code, headers = api_instance.get_corporations_corporation_id_customs_offices_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdCustomsOffices200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_corporations_corporation_id_customs_offices_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdCustomsOffices200Ok&gt;**](GetCorporationsCorporationIdCustomsOffices200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_universe_schematics_schematic_id

> <GetUniverseSchematicsSchematicIdOk> get_universe_schematics_schematic_id(schematic_id, opts)

Get schematic information

Get information on a planetary factory schematic  --- Alternate route: `/dev/universe/schematics/{schematic_id}/`  Alternate route: `/legacy/universe/schematics/{schematic_id}/`  Alternate route: `/v1/universe/schematics/{schematic_id}/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::PlanetaryInteractionApi.new
schematic_id = 56 # Integer | A PI schematic ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get schematic information
  result = api_instance.get_universe_schematics_schematic_id(schematic_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_universe_schematics_schematic_id: #{e}"
end
```

#### Using the get_universe_schematics_schematic_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniverseSchematicsSchematicIdOk>, Integer, Hash)> get_universe_schematics_schematic_id_with_http_info(schematic_id, opts)

```ruby
begin
  # Get schematic information
  data, status_code, headers = api_instance.get_universe_schematics_schematic_id_with_http_info(schematic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniverseSchematicsSchematicIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling PlanetaryInteractionApi->get_universe_schematics_schematic_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schematic_id** | **Integer** | A PI schematic ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetUniverseSchematicsSchematicIdOk**](GetUniverseSchematicsSchematicIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

