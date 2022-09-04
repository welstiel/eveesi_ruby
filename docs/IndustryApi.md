# RubyEveesiClient::IndustryApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_industry_jobs**](IndustryApi.md#get_characters_character_id_industry_jobs) | **GET** /characters/{character_id}/industry/jobs/ | List character industry jobs |
| [**get_characters_character_id_mining**](IndustryApi.md#get_characters_character_id_mining) | **GET** /characters/{character_id}/mining/ | Character mining ledger |
| [**get_corporation_corporation_id_mining_extractions**](IndustryApi.md#get_corporation_corporation_id_mining_extractions) | **GET** /corporation/{corporation_id}/mining/extractions/ | Moon extraction timers |
| [**get_corporation_corporation_id_mining_observers**](IndustryApi.md#get_corporation_corporation_id_mining_observers) | **GET** /corporation/{corporation_id}/mining/observers/ | Corporation mining observers |
| [**get_corporation_corporation_id_mining_observers_observer_id**](IndustryApi.md#get_corporation_corporation_id_mining_observers_observer_id) | **GET** /corporation/{corporation_id}/mining/observers/{observer_id}/ | Observed corporation mining |
| [**get_corporations_corporation_id_industry_jobs**](IndustryApi.md#get_corporations_corporation_id_industry_jobs) | **GET** /corporations/{corporation_id}/industry/jobs/ | List corporation industry jobs |
| [**get_industry_facilities**](IndustryApi.md#get_industry_facilities) | **GET** /industry/facilities/ | List industry facilities |
| [**get_industry_systems**](IndustryApi.md#get_industry_systems) | **GET** /industry/systems/ | List solar system cost indices |


## get_characters_character_id_industry_jobs

> <Array<GetCharactersCharacterIdIndustryJobs200Ok>> get_characters_character_id_industry_jobs(character_id, opts)

List character industry jobs

List industry jobs placed by a character  --- Alternate route: `/dev/characters/{character_id}/industry/jobs/`  Alternate route: `/legacy/characters/{character_id}/industry/jobs/`  Alternate route: `/v1/characters/{character_id}/industry/jobs/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::IndustryApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  include_completed: true, # Boolean | Whether to retrieve completed character industry jobs. Only includes jobs from the past 90 days
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List character industry jobs
  result = api_instance.get_characters_character_id_industry_jobs(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_industry_jobs: #{e}"
end
```

#### Using the get_characters_character_id_industry_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdIndustryJobs200Ok>>, Integer, Hash)> get_characters_character_id_industry_jobs_with_http_info(character_id, opts)

```ruby
begin
  # List character industry jobs
  data, status_code, headers = api_instance.get_characters_character_id_industry_jobs_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdIndustryJobs200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_industry_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **include_completed** | **Boolean** | Whether to retrieve completed character industry jobs. Only includes jobs from the past 90 days | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdIndustryJobs200Ok&gt;**](GetCharactersCharacterIdIndustryJobs200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_mining

> <Array<GetCharactersCharacterIdMining200Ok>> get_characters_character_id_mining(character_id, opts)

Character mining ledger

Paginated record of all mining done by a character for the past 30 days   --- Alternate route: `/dev/characters/{character_id}/mining/`  Alternate route: `/legacy/characters/{character_id}/mining/`  Alternate route: `/v1/characters/{character_id}/mining/`  --- This route is cached for up to 600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::IndustryApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Character mining ledger
  result = api_instance.get_characters_character_id_mining(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_mining: #{e}"
end
```

#### Using the get_characters_character_id_mining_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdMining200Ok>>, Integer, Hash)> get_characters_character_id_mining_with_http_info(character_id, opts)

```ruby
begin
  # Character mining ledger
  data, status_code, headers = api_instance.get_characters_character_id_mining_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdMining200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_characters_character_id_mining_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdMining200Ok&gt;**](GetCharactersCharacterIdMining200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporation_corporation_id_mining_extractions

> <Array<GetCorporationCorporationIdMiningExtractions200Ok>> get_corporation_corporation_id_mining_extractions(corporation_id, opts)

Moon extraction timers

Extraction timers for all moon chunks being extracted by refineries belonging to a corporation.   --- Alternate route: `/dev/corporation/{corporation_id}/mining/extractions/`  Alternate route: `/legacy/corporation/{corporation_id}/mining/extractions/`  Alternate route: `/v1/corporation/{corporation_id}/mining/extractions/`  --- This route is cached for up to 1800 seconds  --- Requires one of the following EVE corporation role(s): Station_Manager 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::IndustryApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Moon extraction timers
  result = api_instance.get_corporation_corporation_id_mining_extractions(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_extractions: #{e}"
end
```

#### Using the get_corporation_corporation_id_mining_extractions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationCorporationIdMiningExtractions200Ok>>, Integer, Hash)> get_corporation_corporation_id_mining_extractions_with_http_info(corporation_id, opts)

```ruby
begin
  # Moon extraction timers
  data, status_code, headers = api_instance.get_corporation_corporation_id_mining_extractions_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationCorporationIdMiningExtractions200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_extractions_with_http_info: #{e}"
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

[**Array&lt;GetCorporationCorporationIdMiningExtractions200Ok&gt;**](GetCorporationCorporationIdMiningExtractions200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporation_corporation_id_mining_observers

> <Array<GetCorporationCorporationIdMiningObservers200Ok>> get_corporation_corporation_id_mining_observers(corporation_id, opts)

Corporation mining observers

Paginated list of all entities capable of observing and recording mining for a corporation   --- Alternate route: `/dev/corporation/{corporation_id}/mining/observers/`  Alternate route: `/legacy/corporation/{corporation_id}/mining/observers/`  Alternate route: `/v1/corporation/{corporation_id}/mining/observers/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::IndustryApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Corporation mining observers
  result = api_instance.get_corporation_corporation_id_mining_observers(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers: #{e}"
end
```

#### Using the get_corporation_corporation_id_mining_observers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationCorporationIdMiningObservers200Ok>>, Integer, Hash)> get_corporation_corporation_id_mining_observers_with_http_info(corporation_id, opts)

```ruby
begin
  # Corporation mining observers
  data, status_code, headers = api_instance.get_corporation_corporation_id_mining_observers_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationCorporationIdMiningObservers200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers_with_http_info: #{e}"
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

[**Array&lt;GetCorporationCorporationIdMiningObservers200Ok&gt;**](GetCorporationCorporationIdMiningObservers200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporation_corporation_id_mining_observers_observer_id

> <Array<GetCorporationCorporationIdMiningObserversObserverId200Ok>> get_corporation_corporation_id_mining_observers_observer_id(corporation_id, observer_id, opts)

Observed corporation mining

Paginated record of all mining seen by an observer   --- Alternate route: `/dev/corporation/{corporation_id}/mining/observers/{observer_id}/`  Alternate route: `/legacy/corporation/{corporation_id}/mining/observers/{observer_id}/`  Alternate route: `/v1/corporation/{corporation_id}/mining/observers/{observer_id}/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::IndustryApi.new
corporation_id = 56 # Integer | An EVE corporation ID
observer_id = 789 # Integer | A mining observer id
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Observed corporation mining
  result = api_instance.get_corporation_corporation_id_mining_observers_observer_id(corporation_id, observer_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers_observer_id: #{e}"
end
```

#### Using the get_corporation_corporation_id_mining_observers_observer_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationCorporationIdMiningObserversObserverId200Ok>>, Integer, Hash)> get_corporation_corporation_id_mining_observers_observer_id_with_http_info(corporation_id, observer_id, opts)

```ruby
begin
  # Observed corporation mining
  data, status_code, headers = api_instance.get_corporation_corporation_id_mining_observers_observer_id_with_http_info(corporation_id, observer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationCorporationIdMiningObserversObserverId200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporation_corporation_id_mining_observers_observer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **observer_id** | **Integer** | A mining observer id |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationCorporationIdMiningObserversObserverId200Ok&gt;**](GetCorporationCorporationIdMiningObserversObserverId200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_industry_jobs

> <Array<GetCorporationsCorporationIdIndustryJobs200Ok>> get_corporations_corporation_id_industry_jobs(corporation_id, opts)

List corporation industry jobs

List industry jobs run by a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/industry/jobs/`  Alternate route: `/legacy/corporations/{corporation_id}/industry/jobs/`  Alternate route: `/v1/corporations/{corporation_id}/industry/jobs/`  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Factory_Manager 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::IndustryApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  include_completed: true, # Boolean | Whether to retrieve completed corporation industry jobs. Only includes jobs from the past 90 days
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List corporation industry jobs
  result = api_instance.get_corporations_corporation_id_industry_jobs(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporations_corporation_id_industry_jobs: #{e}"
end
```

#### Using the get_corporations_corporation_id_industry_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdIndustryJobs200Ok>>, Integer, Hash)> get_corporations_corporation_id_industry_jobs_with_http_info(corporation_id, opts)

```ruby
begin
  # List corporation industry jobs
  data, status_code, headers = api_instance.get_corporations_corporation_id_industry_jobs_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdIndustryJobs200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_corporations_corporation_id_industry_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **include_completed** | **Boolean** | Whether to retrieve completed corporation industry jobs. Only includes jobs from the past 90 days | [optional][default to false] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdIndustryJobs200Ok&gt;**](GetCorporationsCorporationIdIndustryJobs200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_industry_facilities

> <Array<GetIndustryFacilities200Ok>> get_industry_facilities(opts)

List industry facilities

Return a list of industry facilities  --- Alternate route: `/dev/industry/facilities/`  Alternate route: `/legacy/industry/facilities/`  Alternate route: `/v1/industry/facilities/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::IndustryApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List industry facilities
  result = api_instance.get_industry_facilities(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_industry_facilities: #{e}"
end
```

#### Using the get_industry_facilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetIndustryFacilities200Ok>>, Integer, Hash)> get_industry_facilities_with_http_info(opts)

```ruby
begin
  # List industry facilities
  data, status_code, headers = api_instance.get_industry_facilities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetIndustryFacilities200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_industry_facilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetIndustryFacilities200Ok&gt;**](GetIndustryFacilities200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_industry_systems

> <Array<GetIndustrySystems200Ok>> get_industry_systems(opts)

List solar system cost indices

Return cost indices for solar systems  --- Alternate route: `/dev/industry/systems/`  Alternate route: `/legacy/industry/systems/`  Alternate route: `/v1/industry/systems/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::IndustryApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List solar system cost indices
  result = api_instance.get_industry_systems(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_industry_systems: #{e}"
end
```

#### Using the get_industry_systems_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetIndustrySystems200Ok>>, Integer, Hash)> get_industry_systems_with_http_info(opts)

```ruby
begin
  # List solar system cost indices
  data, status_code, headers = api_instance.get_industry_systems_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetIndustrySystems200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling IndustryApi->get_industry_systems_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetIndustrySystems200Ok&gt;**](GetIndustrySystems200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

