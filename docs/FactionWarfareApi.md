# RubyEveesiClient::FactionWarfareApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_fw_stats**](FactionWarfareApi.md#get_characters_character_id_fw_stats) | **GET** /characters/{character_id}/fw/stats/ | Overview of a character involved in faction warfare |
| [**get_corporations_corporation_id_fw_stats**](FactionWarfareApi.md#get_corporations_corporation_id_fw_stats) | **GET** /corporations/{corporation_id}/fw/stats/ | Overview of a corporation involved in faction warfare |
| [**get_fw_leaderboards**](FactionWarfareApi.md#get_fw_leaderboards) | **GET** /fw/leaderboards/ | List of the top factions in faction warfare |
| [**get_fw_leaderboards_characters**](FactionWarfareApi.md#get_fw_leaderboards_characters) | **GET** /fw/leaderboards/characters/ | List of the top pilots in faction warfare |
| [**get_fw_leaderboards_corporations**](FactionWarfareApi.md#get_fw_leaderboards_corporations) | **GET** /fw/leaderboards/corporations/ | List of the top corporations in faction warfare |
| [**get_fw_stats**](FactionWarfareApi.md#get_fw_stats) | **GET** /fw/stats/ | An overview of statistics about factions involved in faction warfare |
| [**get_fw_systems**](FactionWarfareApi.md#get_fw_systems) | **GET** /fw/systems/ | Ownership of faction warfare systems |
| [**get_fw_wars**](FactionWarfareApi.md#get_fw_wars) | **GET** /fw/wars/ | Data about which NPC factions are at war |


## get_characters_character_id_fw_stats

> <GetCharactersCharacterIdFwStatsOk> get_characters_character_id_fw_stats(character_id, opts)

Overview of a character involved in faction warfare

Statistical overview of a character involved in faction warfare  --- Alternate route: `/dev/characters/{character_id}/fw/stats/`  Alternate route: `/legacy/characters/{character_id}/fw/stats/`  Alternate route: `/v1/characters/{character_id}/fw/stats/`  Alternate route: `/v2/characters/{character_id}/fw/stats/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FactionWarfareApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Overview of a character involved in faction warfare
  result = api_instance.get_characters_character_id_fw_stats(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_characters_character_id_fw_stats: #{e}"
end
```

#### Using the get_characters_character_id_fw_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdFwStatsOk>, Integer, Hash)> get_characters_character_id_fw_stats_with_http_info(character_id, opts)

```ruby
begin
  # Overview of a character involved in faction warfare
  data, status_code, headers = api_instance.get_characters_character_id_fw_stats_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdFwStatsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_characters_character_id_fw_stats_with_http_info: #{e}"
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

[**GetCharactersCharacterIdFwStatsOk**](GetCharactersCharacterIdFwStatsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_fw_stats

> <GetCorporationsCorporationIdFwStatsOk> get_corporations_corporation_id_fw_stats(corporation_id, opts)

Overview of a corporation involved in faction warfare

Statistics about a corporation involved in faction warfare  --- Alternate route: `/dev/corporations/{corporation_id}/fw/stats/`  Alternate route: `/legacy/corporations/{corporation_id}/fw/stats/`  Alternate route: `/v1/corporations/{corporation_id}/fw/stats/`  Alternate route: `/v2/corporations/{corporation_id}/fw/stats/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FactionWarfareApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Overview of a corporation involved in faction warfare
  result = api_instance.get_corporations_corporation_id_fw_stats(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_corporations_corporation_id_fw_stats: #{e}"
end
```

#### Using the get_corporations_corporation_id_fw_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCorporationsCorporationIdFwStatsOk>, Integer, Hash)> get_corporations_corporation_id_fw_stats_with_http_info(corporation_id, opts)

```ruby
begin
  # Overview of a corporation involved in faction warfare
  data, status_code, headers = api_instance.get_corporations_corporation_id_fw_stats_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCorporationsCorporationIdFwStatsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_corporations_corporation_id_fw_stats_with_http_info: #{e}"
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

[**GetCorporationsCorporationIdFwStatsOk**](GetCorporationsCorporationIdFwStatsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_leaderboards

> <GetFwLeaderboardsOk> get_fw_leaderboards(opts)

List of the top factions in faction warfare

Top 4 leaderboard of factions for kills and victory points separated by total, last week and yesterday  --- Alternate route: `/dev/fw/leaderboards/`  Alternate route: `/legacy/fw/leaderboards/`  Alternate route: `/v1/fw/leaderboards/`  Alternate route: `/v2/fw/leaderboards/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::FactionWarfareApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List of the top factions in faction warfare
  result = api_instance.get_fw_leaderboards(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards: #{e}"
end
```

#### Using the get_fw_leaderboards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFwLeaderboardsOk>, Integer, Hash)> get_fw_leaderboards_with_http_info(opts)

```ruby
begin
  # List of the top factions in faction warfare
  data, status_code, headers = api_instance.get_fw_leaderboards_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFwLeaderboardsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetFwLeaderboardsOk**](GetFwLeaderboardsOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_leaderboards_characters

> <GetFwLeaderboardsCharactersOk> get_fw_leaderboards_characters(opts)

List of the top pilots in faction warfare

Top 100 leaderboard of pilots for kills and victory points separated by total, last week and yesterday  --- Alternate route: `/dev/fw/leaderboards/characters/`  Alternate route: `/legacy/fw/leaderboards/characters/`  Alternate route: `/v1/fw/leaderboards/characters/`  Alternate route: `/v2/fw/leaderboards/characters/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::FactionWarfareApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List of the top pilots in faction warfare
  result = api_instance.get_fw_leaderboards_characters(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_characters: #{e}"
end
```

#### Using the get_fw_leaderboards_characters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFwLeaderboardsCharactersOk>, Integer, Hash)> get_fw_leaderboards_characters_with_http_info(opts)

```ruby
begin
  # List of the top pilots in faction warfare
  data, status_code, headers = api_instance.get_fw_leaderboards_characters_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFwLeaderboardsCharactersOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_characters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetFwLeaderboardsCharactersOk**](GetFwLeaderboardsCharactersOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_leaderboards_corporations

> <GetFwLeaderboardsCorporationsOk> get_fw_leaderboards_corporations(opts)

List of the top corporations in faction warfare

Top 10 leaderboard of corporations for kills and victory points separated by total, last week and yesterday  --- Alternate route: `/dev/fw/leaderboards/corporations/`  Alternate route: `/legacy/fw/leaderboards/corporations/`  Alternate route: `/v1/fw/leaderboards/corporations/`  Alternate route: `/v2/fw/leaderboards/corporations/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::FactionWarfareApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List of the top corporations in faction warfare
  result = api_instance.get_fw_leaderboards_corporations(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_corporations: #{e}"
end
```

#### Using the get_fw_leaderboards_corporations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFwLeaderboardsCorporationsOk>, Integer, Hash)> get_fw_leaderboards_corporations_with_http_info(opts)

```ruby
begin
  # List of the top corporations in faction warfare
  data, status_code, headers = api_instance.get_fw_leaderboards_corporations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFwLeaderboardsCorporationsOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_leaderboards_corporations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetFwLeaderboardsCorporationsOk**](GetFwLeaderboardsCorporationsOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_stats

> <Array<GetFwStats200Ok>> get_fw_stats(opts)

An overview of statistics about factions involved in faction warfare

Statistical overviews of factions involved in faction warfare  --- Alternate route: `/dev/fw/stats/`  Alternate route: `/legacy/fw/stats/`  Alternate route: `/v1/fw/stats/`  Alternate route: `/v2/fw/stats/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::FactionWarfareApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # An overview of statistics about factions involved in faction warfare
  result = api_instance.get_fw_stats(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_stats: #{e}"
end
```

#### Using the get_fw_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetFwStats200Ok>>, Integer, Hash)> get_fw_stats_with_http_info(opts)

```ruby
begin
  # An overview of statistics about factions involved in faction warfare
  data, status_code, headers = api_instance.get_fw_stats_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetFwStats200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetFwStats200Ok&gt;**](GetFwStats200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_systems

> <Array<GetFwSystems200Ok>> get_fw_systems(opts)

Ownership of faction warfare systems

An overview of the current ownership of faction warfare solar systems  --- Alternate route: `/dev/fw/systems/`  Alternate route: `/legacy/fw/systems/`  Alternate route: `/v2/fw/systems/`  Alternate route: `/v3/fw/systems/`  --- This route is cached for up to 1800 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::FactionWarfareApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Ownership of faction warfare systems
  result = api_instance.get_fw_systems(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_systems: #{e}"
end
```

#### Using the get_fw_systems_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetFwSystems200Ok>>, Integer, Hash)> get_fw_systems_with_http_info(opts)

```ruby
begin
  # Ownership of faction warfare systems
  data, status_code, headers = api_instance.get_fw_systems_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetFwSystems200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_systems_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetFwSystems200Ok&gt;**](GetFwSystems200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fw_wars

> <Array<GetFwWars200Ok>> get_fw_wars(opts)

Data about which NPC factions are at war

Data about which NPC factions are at war  --- Alternate route: `/dev/fw/wars/`  Alternate route: `/legacy/fw/wars/`  Alternate route: `/v1/fw/wars/`  Alternate route: `/v2/fw/wars/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::FactionWarfareApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Data about which NPC factions are at war
  result = api_instance.get_fw_wars(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_wars: #{e}"
end
```

#### Using the get_fw_wars_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetFwWars200Ok>>, Integer, Hash)> get_fw_wars_with_http_info(opts)

```ruby
begin
  # Data about which NPC factions are at war
  data, status_code, headers = api_instance.get_fw_wars_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetFwWars200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FactionWarfareApi->get_fw_wars_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetFwWars200Ok&gt;**](GetFwWars200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

