# RubyEveesiClient::CorporationApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_corporations_corporation_id**](CorporationApi.md#get_corporations_corporation_id) | **GET** /corporations/{corporation_id}/ | Get corporation information |
| [**get_corporations_corporation_id_alliancehistory**](CorporationApi.md#get_corporations_corporation_id_alliancehistory) | **GET** /corporations/{corporation_id}/alliancehistory/ | Get alliance history |
| [**get_corporations_corporation_id_blueprints**](CorporationApi.md#get_corporations_corporation_id_blueprints) | **GET** /corporations/{corporation_id}/blueprints/ | Get corporation blueprints |
| [**get_corporations_corporation_id_containers_logs**](CorporationApi.md#get_corporations_corporation_id_containers_logs) | **GET** /corporations/{corporation_id}/containers/logs/ | Get all corporation ALSC logs |
| [**get_corporations_corporation_id_divisions**](CorporationApi.md#get_corporations_corporation_id_divisions) | **GET** /corporations/{corporation_id}/divisions/ | Get corporation divisions |
| [**get_corporations_corporation_id_facilities**](CorporationApi.md#get_corporations_corporation_id_facilities) | **GET** /corporations/{corporation_id}/facilities/ | Get corporation facilities |
| [**get_corporations_corporation_id_icons**](CorporationApi.md#get_corporations_corporation_id_icons) | **GET** /corporations/{corporation_id}/icons/ | Get corporation icon |
| [**get_corporations_corporation_id_medals**](CorporationApi.md#get_corporations_corporation_id_medals) | **GET** /corporations/{corporation_id}/medals/ | Get corporation medals |
| [**get_corporations_corporation_id_medals_issued**](CorporationApi.md#get_corporations_corporation_id_medals_issued) | **GET** /corporations/{corporation_id}/medals/issued/ | Get corporation issued medals |
| [**get_corporations_corporation_id_members**](CorporationApi.md#get_corporations_corporation_id_members) | **GET** /corporations/{corporation_id}/members/ | Get corporation members |
| [**get_corporations_corporation_id_members_limit**](CorporationApi.md#get_corporations_corporation_id_members_limit) | **GET** /corporations/{corporation_id}/members/limit/ | Get corporation member limit |
| [**get_corporations_corporation_id_members_titles**](CorporationApi.md#get_corporations_corporation_id_members_titles) | **GET** /corporations/{corporation_id}/members/titles/ | Get corporation&#39;s members&#39; titles |
| [**get_corporations_corporation_id_membertracking**](CorporationApi.md#get_corporations_corporation_id_membertracking) | **GET** /corporations/{corporation_id}/membertracking/ | Track corporation members |
| [**get_corporations_corporation_id_roles**](CorporationApi.md#get_corporations_corporation_id_roles) | **GET** /corporations/{corporation_id}/roles/ | Get corporation member roles |
| [**get_corporations_corporation_id_roles_history**](CorporationApi.md#get_corporations_corporation_id_roles_history) | **GET** /corporations/{corporation_id}/roles/history/ | Get corporation member roles history |
| [**get_corporations_corporation_id_shareholders**](CorporationApi.md#get_corporations_corporation_id_shareholders) | **GET** /corporations/{corporation_id}/shareholders/ | Get corporation shareholders |
| [**get_corporations_corporation_id_standings**](CorporationApi.md#get_corporations_corporation_id_standings) | **GET** /corporations/{corporation_id}/standings/ | Get corporation standings |
| [**get_corporations_corporation_id_starbases**](CorporationApi.md#get_corporations_corporation_id_starbases) | **GET** /corporations/{corporation_id}/starbases/ | Get corporation starbases (POSes) |
| [**get_corporations_corporation_id_starbases_starbase_id**](CorporationApi.md#get_corporations_corporation_id_starbases_starbase_id) | **GET** /corporations/{corporation_id}/starbases/{starbase_id}/ | Get starbase (POS) detail |
| [**get_corporations_corporation_id_structures**](CorporationApi.md#get_corporations_corporation_id_structures) | **GET** /corporations/{corporation_id}/structures/ | Get corporation structures |
| [**get_corporations_corporation_id_titles**](CorporationApi.md#get_corporations_corporation_id_titles) | **GET** /corporations/{corporation_id}/titles/ | Get corporation titles |
| [**get_corporations_npccorps**](CorporationApi.md#get_corporations_npccorps) | **GET** /corporations/npccorps/ | Get npc corporations |


## get_corporations_corporation_id

> <GetCorporationsCorporationIdOk> get_corporations_corporation_id(corporation_id, opts)

Get corporation information

Public information about a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/`  Alternate route: `/v5/corporations/{corporation_id}/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get corporation information
  result = api_instance.get_corporations_corporation_id(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id: #{e}"
end
```

#### Using the get_corporations_corporation_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCorporationsCorporationIdOk>, Integer, Hash)> get_corporations_corporation_id_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation information
  data, status_code, headers = api_instance.get_corporations_corporation_id_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCorporationsCorporationIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetCorporationsCorporationIdOk**](GetCorporationsCorporationIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_alliancehistory

> <Array<GetCorporationsCorporationIdAlliancehistory200Ok>> get_corporations_corporation_id_alliancehistory(corporation_id, opts)

Get alliance history

Get a list of all the alliances a corporation has been a member of  --- Alternate route: `/dev/corporations/{corporation_id}/alliancehistory/`  Alternate route: `/v3/corporations/{corporation_id}/alliancehistory/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get alliance history
  result = api_instance.get_corporations_corporation_id_alliancehistory(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_alliancehistory: #{e}"
end
```

#### Using the get_corporations_corporation_id_alliancehistory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdAlliancehistory200Ok>>, Integer, Hash)> get_corporations_corporation_id_alliancehistory_with_http_info(corporation_id, opts)

```ruby
begin
  # Get alliance history
  data, status_code, headers = api_instance.get_corporations_corporation_id_alliancehistory_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdAlliancehistory200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_alliancehistory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdAlliancehistory200Ok&gt;**](GetCorporationsCorporationIdAlliancehistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_blueprints

> <Array<GetCorporationsCorporationIdBlueprints200Ok>> get_corporations_corporation_id_blueprints(corporation_id, opts)

Get corporation blueprints

Returns a list of blueprints the corporation owns  --- Alternate route: `/dev/corporations/{corporation_id}/blueprints/`  Alternate route: `/v3/corporations/{corporation_id}/blueprints/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation blueprints
  result = api_instance.get_corporations_corporation_id_blueprints(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_blueprints: #{e}"
end
```

#### Using the get_corporations_corporation_id_blueprints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdBlueprints200Ok>>, Integer, Hash)> get_corporations_corporation_id_blueprints_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation blueprints
  data, status_code, headers = api_instance.get_corporations_corporation_id_blueprints_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdBlueprints200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_blueprints_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdBlueprints200Ok&gt;**](GetCorporationsCorporationIdBlueprints200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_containers_logs

> <Array<GetCorporationsCorporationIdContainersLogs200Ok>> get_corporations_corporation_id_containers_logs(corporation_id, opts)

Get all corporation ALSC logs

Returns logs recorded in the past seven days from all audit log secure containers (ALSC) owned by a given corporation  --- Alternate route: `/dev/corporations/{corporation_id}/containers/logs/`  Alternate route: `/v3/corporations/{corporation_id}/containers/logs/`  --- This route is cached for up to 600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get all corporation ALSC logs
  result = api_instance.get_corporations_corporation_id_containers_logs(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_containers_logs: #{e}"
end
```

#### Using the get_corporations_corporation_id_containers_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdContainersLogs200Ok>>, Integer, Hash)> get_corporations_corporation_id_containers_logs_with_http_info(corporation_id, opts)

```ruby
begin
  # Get all corporation ALSC logs
  data, status_code, headers = api_instance.get_corporations_corporation_id_containers_logs_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdContainersLogs200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_containers_logs_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdContainersLogs200Ok&gt;**](GetCorporationsCorporationIdContainersLogs200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_divisions

> <GetCorporationsCorporationIdDivisionsOk> get_corporations_corporation_id_divisions(corporation_id, opts)

Get corporation divisions

Return corporation hangar and wallet division names, only show if a division is not using the default name  --- Alternate route: `/dev/corporations/{corporation_id}/divisions/`  Alternate route: `/v2/corporations/{corporation_id}/divisions/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation divisions
  result = api_instance.get_corporations_corporation_id_divisions(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_divisions: #{e}"
end
```

#### Using the get_corporations_corporation_id_divisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCorporationsCorporationIdDivisionsOk>, Integer, Hash)> get_corporations_corporation_id_divisions_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation divisions
  data, status_code, headers = api_instance.get_corporations_corporation_id_divisions_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCorporationsCorporationIdDivisionsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_divisions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetCorporationsCorporationIdDivisionsOk**](GetCorporationsCorporationIdDivisionsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_facilities

> <Array<GetCorporationsCorporationIdFacilities200Ok>> get_corporations_corporation_id_facilities(corporation_id, opts)

Get corporation facilities

Return a corporation's facilities  --- Alternate route: `/dev/corporations/{corporation_id}/facilities/`  Alternate route: `/v2/corporations/{corporation_id}/facilities/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Factory_Manager 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation facilities
  result = api_instance.get_corporations_corporation_id_facilities(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_facilities: #{e}"
end
```

#### Using the get_corporations_corporation_id_facilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdFacilities200Ok>>, Integer, Hash)> get_corporations_corporation_id_facilities_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation facilities
  data, status_code, headers = api_instance.get_corporations_corporation_id_facilities_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdFacilities200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_facilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdFacilities200Ok&gt;**](GetCorporationsCorporationIdFacilities200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_icons

> <GetCorporationsCorporationIdIconsOk> get_corporations_corporation_id_icons(corporation_id, opts)

Get corporation icon

Get the icon urls for a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/icons/`  Alternate route: `/v2/corporations/{corporation_id}/icons/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get corporation icon
  result = api_instance.get_corporations_corporation_id_icons(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_icons: #{e}"
end
```

#### Using the get_corporations_corporation_id_icons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCorporationsCorporationIdIconsOk>, Integer, Hash)> get_corporations_corporation_id_icons_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation icon
  data, status_code, headers = api_instance.get_corporations_corporation_id_icons_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCorporationsCorporationIdIconsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_icons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetCorporationsCorporationIdIconsOk**](GetCorporationsCorporationIdIconsOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_medals

> <Array<GetCorporationsCorporationIdMedals200Ok>> get_corporations_corporation_id_medals(corporation_id, opts)

Get corporation medals

Returns a corporation's medals  --- Alternate route: `/dev/corporations/{corporation_id}/medals/`  Alternate route: `/v2/corporations/{corporation_id}/medals/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation medals
  result = api_instance.get_corporations_corporation_id_medals(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals: #{e}"
end
```

#### Using the get_corporations_corporation_id_medals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdMedals200Ok>>, Integer, Hash)> get_corporations_corporation_id_medals_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation medals
  data, status_code, headers = api_instance.get_corporations_corporation_id_medals_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdMedals200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdMedals200Ok&gt;**](GetCorporationsCorporationIdMedals200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_medals_issued

> <Array<GetCorporationsCorporationIdMedalsIssued200Ok>> get_corporations_corporation_id_medals_issued(corporation_id, opts)

Get corporation issued medals

Returns medals issued by a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/medals/issued/`  Alternate route: `/v2/corporations/{corporation_id}/medals/issued/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation issued medals
  result = api_instance.get_corporations_corporation_id_medals_issued(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals_issued: #{e}"
end
```

#### Using the get_corporations_corporation_id_medals_issued_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdMedalsIssued200Ok>>, Integer, Hash)> get_corporations_corporation_id_medals_issued_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation issued medals
  data, status_code, headers = api_instance.get_corporations_corporation_id_medals_issued_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdMedalsIssued200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_medals_issued_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdMedalsIssued200Ok&gt;**](GetCorporationsCorporationIdMedalsIssued200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_members

> Array&lt;Integer&gt; get_corporations_corporation_id_members(corporation_id, opts)

Get corporation members

Return the current member list of a corporation, the token's character need to be a member of the corporation.  --- Alternate route: `/dev/corporations/{corporation_id}/members/`  Alternate route: `/v4/corporations/{corporation_id}/members/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation members
  result = api_instance.get_corporations_corporation_id_members(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members: #{e}"
end
```

#### Using the get_corporations_corporation_id_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_corporations_corporation_id_members_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation members
  data, status_code, headers = api_instance.get_corporations_corporation_id_members_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

**Array&lt;Integer&gt;**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_members_limit

> Integer get_corporations_corporation_id_members_limit(corporation_id, opts)

Get corporation member limit

Return a corporation's member limit, not including CEO himself  --- Alternate route: `/dev/corporations/{corporation_id}/members/limit/`  Alternate route: `/v2/corporations/{corporation_id}/members/limit/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation member limit
  result = api_instance.get_corporations_corporation_id_members_limit(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_limit: #{e}"
end
```

#### Using the get_corporations_corporation_id_members_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Integer, Integer, Hash)> get_corporations_corporation_id_members_limit_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation member limit
  data, status_code, headers = api_instance.get_corporations_corporation_id_members_limit_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Integer
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

**Integer**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_members_titles

> <Array<GetCorporationsCorporationIdMembersTitles200Ok>> get_corporations_corporation_id_members_titles(corporation_id, opts)

Get corporation's members' titles

Returns a corporation's members' titles  --- Alternate route: `/dev/corporations/{corporation_id}/members/titles/`  Alternate route: `/v2/corporations/{corporation_id}/members/titles/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation's members' titles
  result = api_instance.get_corporations_corporation_id_members_titles(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_titles: #{e}"
end
```

#### Using the get_corporations_corporation_id_members_titles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdMembersTitles200Ok>>, Integer, Hash)> get_corporations_corporation_id_members_titles_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation's members' titles
  data, status_code, headers = api_instance.get_corporations_corporation_id_members_titles_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdMembersTitles200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_members_titles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdMembersTitles200Ok&gt;**](GetCorporationsCorporationIdMembersTitles200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_membertracking

> <Array<GetCorporationsCorporationIdMembertracking200Ok>> get_corporations_corporation_id_membertracking(corporation_id, opts)

Track corporation members

Returns additional information about a corporation's members which helps tracking their activities  --- Alternate route: `/dev/corporations/{corporation_id}/membertracking/`  Alternate route: `/v2/corporations/{corporation_id}/membertracking/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Track corporation members
  result = api_instance.get_corporations_corporation_id_membertracking(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_membertracking: #{e}"
end
```

#### Using the get_corporations_corporation_id_membertracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdMembertracking200Ok>>, Integer, Hash)> get_corporations_corporation_id_membertracking_with_http_info(corporation_id, opts)

```ruby
begin
  # Track corporation members
  data, status_code, headers = api_instance.get_corporations_corporation_id_membertracking_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdMembertracking200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_membertracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdMembertracking200Ok&gt;**](GetCorporationsCorporationIdMembertracking200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_roles

> <Array<GetCorporationsCorporationIdRoles200Ok>> get_corporations_corporation_id_roles(corporation_id, opts)

Get corporation member roles

Return the roles of all members if the character has the personnel manager role or any grantable role.  --- Alternate route: `/dev/corporations/{corporation_id}/roles/`  Alternate route: `/v2/corporations/{corporation_id}/roles/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation member roles
  result = api_instance.get_corporations_corporation_id_roles(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles: #{e}"
end
```

#### Using the get_corporations_corporation_id_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdRoles200Ok>>, Integer, Hash)> get_corporations_corporation_id_roles_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation member roles
  data, status_code, headers = api_instance.get_corporations_corporation_id_roles_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdRoles200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdRoles200Ok&gt;**](GetCorporationsCorporationIdRoles200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_roles_history

> <Array<GetCorporationsCorporationIdRolesHistory200Ok>> get_corporations_corporation_id_roles_history(corporation_id, opts)

Get corporation member roles history

Return how roles have changed for a coporation's members, up to a month  --- Alternate route: `/dev/corporations/{corporation_id}/roles/history/`  Alternate route: `/v2/corporations/{corporation_id}/roles/history/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation member roles history
  result = api_instance.get_corporations_corporation_id_roles_history(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles_history: #{e}"
end
```

#### Using the get_corporations_corporation_id_roles_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdRolesHistory200Ok>>, Integer, Hash)> get_corporations_corporation_id_roles_history_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation member roles history
  data, status_code, headers = api_instance.get_corporations_corporation_id_roles_history_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdRolesHistory200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_roles_history_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdRolesHistory200Ok&gt;**](GetCorporationsCorporationIdRolesHistory200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_shareholders

> <Array<GetCorporationsCorporationIdShareholders200Ok>> get_corporations_corporation_id_shareholders(corporation_id, opts)

Get corporation shareholders

Return the current shareholders of a corporation.  --- Alternate route: `/dev/corporations/{corporation_id}/shareholders/`  Alternate route: `/legacy/corporations/{corporation_id}/shareholders/`  Alternate route: `/v1/corporations/{corporation_id}/shareholders/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation shareholders
  result = api_instance.get_corporations_corporation_id_shareholders(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_shareholders: #{e}"
end
```

#### Using the get_corporations_corporation_id_shareholders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdShareholders200Ok>>, Integer, Hash)> get_corporations_corporation_id_shareholders_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation shareholders
  data, status_code, headers = api_instance.get_corporations_corporation_id_shareholders_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdShareholders200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_shareholders_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdShareholders200Ok&gt;**](GetCorporationsCorporationIdShareholders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_standings

> <Array<GetCorporationsCorporationIdStandings200Ok>> get_corporations_corporation_id_standings(corporation_id, opts)

Get corporation standings

Return corporation standings from agents, NPC corporations, and factions  --- Alternate route: `/dev/corporations/{corporation_id}/standings/`  Alternate route: `/v2/corporations/{corporation_id}/standings/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation standings
  result = api_instance.get_corporations_corporation_id_standings(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_standings: #{e}"
end
```

#### Using the get_corporations_corporation_id_standings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdStandings200Ok>>, Integer, Hash)> get_corporations_corporation_id_standings_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation standings
  data, status_code, headers = api_instance.get_corporations_corporation_id_standings_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdStandings200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_standings_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdStandings200Ok&gt;**](GetCorporationsCorporationIdStandings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_starbases

> <Array<GetCorporationsCorporationIdStarbases200Ok>> get_corporations_corporation_id_starbases(corporation_id, opts)

Get corporation starbases (POSes)

Returns list of corporation starbases (POSes)  --- Alternate route: `/dev/corporations/{corporation_id}/starbases/`  Alternate route: `/v2/corporations/{corporation_id}/starbases/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation starbases (POSes)
  result = api_instance.get_corporations_corporation_id_starbases(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases: #{e}"
end
```

#### Using the get_corporations_corporation_id_starbases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdStarbases200Ok>>, Integer, Hash)> get_corporations_corporation_id_starbases_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation starbases (POSes)
  data, status_code, headers = api_instance.get_corporations_corporation_id_starbases_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdStarbases200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdStarbases200Ok&gt;**](GetCorporationsCorporationIdStarbases200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_starbases_starbase_id

> <GetCorporationsCorporationIdStarbasesStarbaseIdOk> get_corporations_corporation_id_starbases_starbase_id(corporation_id, starbase_id, system_id, opts)

Get starbase (POS) detail

Returns various settings and fuels of a starbase (POS)  --- Alternate route: `/dev/corporations/{corporation_id}/starbases/{starbase_id}/`  Alternate route: `/v2/corporations/{corporation_id}/starbases/{starbase_id}/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
starbase_id = 789 # Integer | An EVE starbase (POS) ID
system_id = 56 # Integer | The solar system this starbase (POS) is located in,
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get starbase (POS) detail
  result = api_instance.get_corporations_corporation_id_starbases_starbase_id(corporation_id, starbase_id, system_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases_starbase_id: #{e}"
end
```

#### Using the get_corporations_corporation_id_starbases_starbase_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCorporationsCorporationIdStarbasesStarbaseIdOk>, Integer, Hash)> get_corporations_corporation_id_starbases_starbase_id_with_http_info(corporation_id, starbase_id, system_id, opts)

```ruby
begin
  # Get starbase (POS) detail
  data, status_code, headers = api_instance.get_corporations_corporation_id_starbases_starbase_id_with_http_info(corporation_id, starbase_id, system_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCorporationsCorporationIdStarbasesStarbaseIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_starbases_starbase_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **starbase_id** | **Integer** | An EVE starbase (POS) ID |  |
| **system_id** | **Integer** | The solar system this starbase (POS) is located in, |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetCorporationsCorporationIdStarbasesStarbaseIdOk**](GetCorporationsCorporationIdStarbasesStarbaseIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_structures

> <Array<GetCorporationsCorporationIdStructures200Ok>> get_corporations_corporation_id_structures(corporation_id, opts)

Get corporation structures

Get a list of corporation structures. This route's version includes the changes to structures detailed in this blog: https://www.eveonline.com/article/upwell-2.0-structures-changes-coming-on-february-13th  --- Alternate route: `/dev/corporations/{corporation_id}/structures/`  Alternate route: `/v4/corporations/{corporation_id}/structures/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Station_Manager 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en', # String | Language to use in the response, takes precedence over Accept-Language
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation structures
  result = api_instance.get_corporations_corporation_id_structures(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_structures: #{e}"
end
```

#### Using the get_corporations_corporation_id_structures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdStructures200Ok>>, Integer, Hash)> get_corporations_corporation_id_structures_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation structures
  data, status_code, headers = api_instance.get_corporations_corporation_id_structures_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdStructures200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_structures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdStructures200Ok&gt;**](GetCorporationsCorporationIdStructures200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_titles

> <Array<GetCorporationsCorporationIdTitles200Ok>> get_corporations_corporation_id_titles(corporation_id, opts)

Get corporation titles

Returns a corporation's titles  --- Alternate route: `/dev/corporations/{corporation_id}/titles/`  Alternate route: `/v2/corporations/{corporation_id}/titles/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CorporationApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation titles
  result = api_instance.get_corporations_corporation_id_titles(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_titles: #{e}"
end
```

#### Using the get_corporations_corporation_id_titles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdTitles200Ok>>, Integer, Hash)> get_corporations_corporation_id_titles_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation titles
  data, status_code, headers = api_instance.get_corporations_corporation_id_titles_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdTitles200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_corporation_id_titles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdTitles200Ok&gt;**](GetCorporationsCorporationIdTitles200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_npccorps

> Array&lt;Integer&gt; get_corporations_npccorps(opts)

Get npc corporations

Get a list of npc corporations  --- Alternate route: `/dev/corporations/npccorps/`  Alternate route: `/v2/corporations/npccorps/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CorporationApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get npc corporations
  result = api_instance.get_corporations_npccorps(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_npccorps: #{e}"
end
```

#### Using the get_corporations_npccorps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_corporations_npccorps_with_http_info(opts)

```ruby
begin
  # Get npc corporations
  data, status_code, headers = api_instance.get_corporations_npccorps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CorporationApi->get_corporations_npccorps_with_http_info: #{e}"
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

