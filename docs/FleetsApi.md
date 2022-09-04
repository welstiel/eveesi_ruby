# RubyEveesiClient::FleetsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_fleets_fleet_id_members_member_id**](FleetsApi.md#delete_fleets_fleet_id_members_member_id) | **DELETE** /fleets/{fleet_id}/members/{member_id}/ | Kick fleet member |
| [**delete_fleets_fleet_id_squads_squad_id**](FleetsApi.md#delete_fleets_fleet_id_squads_squad_id) | **DELETE** /fleets/{fleet_id}/squads/{squad_id}/ | Delete fleet squad |
| [**delete_fleets_fleet_id_wings_wing_id**](FleetsApi.md#delete_fleets_fleet_id_wings_wing_id) | **DELETE** /fleets/{fleet_id}/wings/{wing_id}/ | Delete fleet wing |
| [**get_characters_character_id_fleet**](FleetsApi.md#get_characters_character_id_fleet) | **GET** /characters/{character_id}/fleet/ | Get character fleet info |
| [**get_fleets_fleet_id**](FleetsApi.md#get_fleets_fleet_id) | **GET** /fleets/{fleet_id}/ | Get fleet information |
| [**get_fleets_fleet_id_members**](FleetsApi.md#get_fleets_fleet_id_members) | **GET** /fleets/{fleet_id}/members/ | Get fleet members |
| [**get_fleets_fleet_id_wings**](FleetsApi.md#get_fleets_fleet_id_wings) | **GET** /fleets/{fleet_id}/wings/ | Get fleet wings |
| [**post_fleets_fleet_id_members**](FleetsApi.md#post_fleets_fleet_id_members) | **POST** /fleets/{fleet_id}/members/ | Create fleet invitation |
| [**post_fleets_fleet_id_wings**](FleetsApi.md#post_fleets_fleet_id_wings) | **POST** /fleets/{fleet_id}/wings/ | Create fleet wing |
| [**post_fleets_fleet_id_wings_wing_id_squads**](FleetsApi.md#post_fleets_fleet_id_wings_wing_id_squads) | **POST** /fleets/{fleet_id}/wings/{wing_id}/squads/ | Create fleet squad |
| [**put_fleets_fleet_id**](FleetsApi.md#put_fleets_fleet_id) | **PUT** /fleets/{fleet_id}/ | Update fleet |
| [**put_fleets_fleet_id_members_member_id**](FleetsApi.md#put_fleets_fleet_id_members_member_id) | **PUT** /fleets/{fleet_id}/members/{member_id}/ | Move fleet member |
| [**put_fleets_fleet_id_squads_squad_id**](FleetsApi.md#put_fleets_fleet_id_squads_squad_id) | **PUT** /fleets/{fleet_id}/squads/{squad_id}/ | Rename fleet squad |
| [**put_fleets_fleet_id_wings_wing_id**](FleetsApi.md#put_fleets_fleet_id_wings_wing_id) | **PUT** /fleets/{fleet_id}/wings/{wing_id}/ | Rename fleet wing |


## delete_fleets_fleet_id_members_member_id

> delete_fleets_fleet_id_members_member_id(fleet_id, member_id, opts)

Kick fleet member

Kick a fleet member  --- Alternate route: `/dev/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/v1/fleets/{fleet_id}/members/{member_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
member_id = 56 # Integer | The character ID of a member in this fleet
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Kick fleet member
  api_instance.delete_fleets_fleet_id_members_member_id(fleet_id, member_id, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_members_member_id: #{e}"
end
```

#### Using the delete_fleets_fleet_id_members_member_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, opts)

```ruby
begin
  # Kick fleet member
  data, status_code, headers = api_instance.delete_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_members_member_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **member_id** | **Integer** | The character ID of a member in this fleet |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_fleets_fleet_id_squads_squad_id

> delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, opts)

Delete fleet squad

Delete a fleet squad, only empty squads can be deleted  --- Alternate route: `/dev/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/v1/fleets/{fleet_id}/squads/{squad_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
squad_id = 789 # Integer | The squad to delete
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Delete fleet squad
  api_instance.delete_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_squads_squad_id: #{e}"
end
```

#### Using the delete_fleets_fleet_id_squads_squad_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, opts)

```ruby
begin
  # Delete fleet squad
  data, status_code, headers = api_instance.delete_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_squads_squad_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **squad_id** | **Integer** | The squad to delete |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_fleets_fleet_id_wings_wing_id

> delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, opts)

Delete fleet wing

Delete a fleet wing, only empty wings can be deleted. The wing may contain squads, but the squads must be empty  --- Alternate route: `/dev/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
wing_id = 789 # Integer | The wing to delete
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Delete fleet wing
  api_instance.delete_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_wings_wing_id: #{e}"
end
```

#### Using the delete_fleets_fleet_id_wings_wing_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, opts)

```ruby
begin
  # Delete fleet wing
  data, status_code, headers = api_instance.delete_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->delete_fleets_fleet_id_wings_wing_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **wing_id** | **Integer** | The wing to delete |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_fleet

> <GetCharactersCharacterIdFleetOk> get_characters_character_id_fleet(character_id, opts)

Get character fleet info

Return the fleet ID the character is in, if any.  --- Alternate route: `/legacy/characters/{character_id}/fleet/`  Alternate route: `/v1/characters/{character_id}/fleet/`  --- This route is cached for up to 60 seconds  --- Warning: This route has an upgrade available  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#GET-/characters/{character_id}/fleet/)

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character fleet info
  result = api_instance.get_characters_character_id_fleet(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_characters_character_id_fleet: #{e}"
end
```

#### Using the get_characters_character_id_fleet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdFleetOk>, Integer, Hash)> get_characters_character_id_fleet_with_http_info(character_id, opts)

```ruby
begin
  # Get character fleet info
  data, status_code, headers = api_instance.get_characters_character_id_fleet_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdFleetOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_characters_character_id_fleet_with_http_info: #{e}"
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

[**GetCharactersCharacterIdFleetOk**](GetCharactersCharacterIdFleetOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fleets_fleet_id

> <GetFleetsFleetIdOk> get_fleets_fleet_id(fleet_id, opts)

Get fleet information

Return details about a fleet  --- Alternate route: `/dev/fleets/{fleet_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/`  Alternate route: `/v1/fleets/{fleet_id}/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get fleet information
  result = api_instance.get_fleets_fleet_id(fleet_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id: #{e}"
end
```

#### Using the get_fleets_fleet_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFleetsFleetIdOk>, Integer, Hash)> get_fleets_fleet_id_with_http_info(fleet_id, opts)

```ruby
begin
  # Get fleet information
  data, status_code, headers = api_instance.get_fleets_fleet_id_with_http_info(fleet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFleetsFleetIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetFleetsFleetIdOk**](GetFleetsFleetIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fleets_fleet_id_members

> <Array<GetFleetsFleetIdMembers200Ok>> get_fleets_fleet_id_members(fleet_id, opts)

Get fleet members

Return information about fleet members  --- Alternate route: `/dev/fleets/{fleet_id}/members/`  Alternate route: `/legacy/fleets/{fleet_id}/members/`  Alternate route: `/v1/fleets/{fleet_id}/members/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en', # String | Language to use in the response, takes precedence over Accept-Language
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get fleet members
  result = api_instance.get_fleets_fleet_id_members(fleet_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_members: #{e}"
end
```

#### Using the get_fleets_fleet_id_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetFleetsFleetIdMembers200Ok>>, Integer, Hash)> get_fleets_fleet_id_members_with_http_info(fleet_id, opts)

```ruby
begin
  # Get fleet members
  data, status_code, headers = api_instance.get_fleets_fleet_id_members_with_http_info(fleet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetFleetsFleetIdMembers200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetFleetsFleetIdMembers200Ok&gt;**](GetFleetsFleetIdMembers200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fleets_fleet_id_wings

> <Array<GetFleetsFleetIdWings200Ok>> get_fleets_fleet_id_wings(fleet_id, opts)

Get fleet wings

Return information about wings in a fleet  --- Alternate route: `/dev/fleets/{fleet_id}/wings/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/`  Alternate route: `/v1/fleets/{fleet_id}/wings/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en', # String | Language to use in the response, takes precedence over Accept-Language
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get fleet wings
  result = api_instance.get_fleets_fleet_id_wings(fleet_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_wings: #{e}"
end
```

#### Using the get_fleets_fleet_id_wings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetFleetsFleetIdWings200Ok>>, Integer, Hash)> get_fleets_fleet_id_wings_with_http_info(fleet_id, opts)

```ruby
begin
  # Get fleet wings
  data, status_code, headers = api_instance.get_fleets_fleet_id_wings_with_http_info(fleet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetFleetsFleetIdWings200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->get_fleets_fleet_id_wings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetFleetsFleetIdWings200Ok&gt;**](GetFleetsFleetIdWings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_fleets_fleet_id_members

> post_fleets_fleet_id_members(fleet_id, invitation, opts)

Create fleet invitation

Invite a character into the fleet. If a character has a CSPA charge set it is not possible to invite them to the fleet using ESI  --- Alternate route: `/dev/fleets/{fleet_id}/members/`  Alternate route: `/legacy/fleets/{fleet_id}/members/`  Alternate route: `/v1/fleets/{fleet_id}/members/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
invitation = RubyEveesiClient::PostFleetsFleetIdMembersInvitation.new({character_id: 37, role: 'fleet_commander'}) # PostFleetsFleetIdMembersInvitation | Details of the invitation
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Create fleet invitation
  api_instance.post_fleets_fleet_id_members(fleet_id, invitation, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_members: #{e}"
end
```

#### Using the post_fleets_fleet_id_members_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_fleets_fleet_id_members_with_http_info(fleet_id, invitation, opts)

```ruby
begin
  # Create fleet invitation
  data, status_code, headers = api_instance.post_fleets_fleet_id_members_with_http_info(fleet_id, invitation, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **invitation** | [**PostFleetsFleetIdMembersInvitation**](PostFleetsFleetIdMembersInvitation.md) | Details of the invitation |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_fleets_fleet_id_wings

> <PostFleetsFleetIdWingsCreated> post_fleets_fleet_id_wings(fleet_id, opts)

Create fleet wing

Create a new wing in a fleet  --- Alternate route: `/dev/fleets/{fleet_id}/wings/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/`  Alternate route: `/v1/fleets/{fleet_id}/wings/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Create fleet wing
  result = api_instance.post_fleets_fleet_id_wings(fleet_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings: #{e}"
end
```

#### Using the post_fleets_fleet_id_wings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFleetsFleetIdWingsCreated>, Integer, Hash)> post_fleets_fleet_id_wings_with_http_info(fleet_id, opts)

```ruby
begin
  # Create fleet wing
  data, status_code, headers = api_instance.post_fleets_fleet_id_wings_with_http_info(fleet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFleetsFleetIdWingsCreated>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**PostFleetsFleetIdWingsCreated**](PostFleetsFleetIdWingsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_fleets_fleet_id_wings_wing_id_squads

> <PostFleetsFleetIdWingsWingIdSquadsCreated> post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, opts)

Create fleet squad

Create a new squad in a fleet  --- Alternate route: `/dev/fleets/{fleet_id}/wings/{wing_id}/squads/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/squads/`  Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/squads/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
wing_id = 789 # Integer | The wing_id to create squad in
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Create fleet squad
  result = api_instance.post_fleets_fleet_id_wings_wing_id_squads(fleet_id, wing_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings_wing_id_squads: #{e}"
end
```

#### Using the post_fleets_fleet_id_wings_wing_id_squads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFleetsFleetIdWingsWingIdSquadsCreated>, Integer, Hash)> post_fleets_fleet_id_wings_wing_id_squads_with_http_info(fleet_id, wing_id, opts)

```ruby
begin
  # Create fleet squad
  data, status_code, headers = api_instance.post_fleets_fleet_id_wings_wing_id_squads_with_http_info(fleet_id, wing_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFleetsFleetIdWingsWingIdSquadsCreated>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->post_fleets_fleet_id_wings_wing_id_squads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **wing_id** | **Integer** | The wing_id to create squad in |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**PostFleetsFleetIdWingsWingIdSquadsCreated**](PostFleetsFleetIdWingsWingIdSquadsCreated.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_fleets_fleet_id

> put_fleets_fleet_id(fleet_id, new_settings, opts)

Update fleet

Update settings about a fleet  --- Alternate route: `/dev/fleets/{fleet_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/`  Alternate route: `/v1/fleets/{fleet_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
new_settings = RubyEveesiClient::PutFleetsFleetIdNewSettings.new # PutFleetsFleetIdNewSettings | What to update for this fleet
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Update fleet
  api_instance.put_fleets_fleet_id(fleet_id, new_settings, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_with_http_info(fleet_id, new_settings, opts)

```ruby
begin
  # Update fleet
  data, status_code, headers = api_instance.put_fleets_fleet_id_with_http_info(fleet_id, new_settings, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **new_settings** | [**PutFleetsFleetIdNewSettings**](PutFleetsFleetIdNewSettings.md) | What to update for this fleet |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_fleets_fleet_id_members_member_id

> put_fleets_fleet_id_members_member_id(fleet_id, member_id, movement, opts)

Move fleet member

Move a fleet member around  --- Alternate route: `/dev/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/members/{member_id}/`  Alternate route: `/v1/fleets/{fleet_id}/members/{member_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
member_id = 56 # Integer | The character ID of a member in this fleet
movement = RubyEveesiClient::PutFleetsFleetIdMembersMemberIdMovement.new({role: 'fleet_commander'}) # PutFleetsFleetIdMembersMemberIdMovement | Details of the invitation
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Move fleet member
  api_instance.put_fleets_fleet_id_members_member_id(fleet_id, member_id, movement, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_members_member_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_members_member_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, movement, opts)

```ruby
begin
  # Move fleet member
  data, status_code, headers = api_instance.put_fleets_fleet_id_members_member_id_with_http_info(fleet_id, member_id, movement, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_members_member_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **member_id** | **Integer** | The character ID of a member in this fleet |  |
| **movement** | [**PutFleetsFleetIdMembersMemberIdMovement**](PutFleetsFleetIdMembersMemberIdMovement.md) | Details of the invitation |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_fleets_fleet_id_squads_squad_id

> put_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, naming, opts)

Rename fleet squad

Rename a fleet squad  --- Alternate route: `/dev/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/squads/{squad_id}/`  Alternate route: `/v1/fleets/{fleet_id}/squads/{squad_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
squad_id = 789 # Integer | The squad to rename
naming = RubyEveesiClient::PutFleetsFleetIdSquadsSquadIdNaming.new({name: 'name_example'}) # PutFleetsFleetIdSquadsSquadIdNaming | New name of the squad
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Rename fleet squad
  api_instance.put_fleets_fleet_id_squads_squad_id(fleet_id, squad_id, naming, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_squads_squad_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_squads_squad_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, naming, opts)

```ruby
begin
  # Rename fleet squad
  data, status_code, headers = api_instance.put_fleets_fleet_id_squads_squad_id_with_http_info(fleet_id, squad_id, naming, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_squads_squad_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **squad_id** | **Integer** | The squad to rename |  |
| **naming** | [**PutFleetsFleetIdSquadsSquadIdNaming**](PutFleetsFleetIdSquadsSquadIdNaming.md) | New name of the squad |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_fleets_fleet_id_wings_wing_id

> put_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, naming, opts)

Rename fleet wing

Rename a fleet wing  --- Alternate route: `/dev/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/legacy/fleets/{fleet_id}/wings/{wing_id}/`  Alternate route: `/v1/fleets/{fleet_id}/wings/{wing_id}/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::FleetsApi.new
fleet_id = 789 # Integer | ID for a fleet
wing_id = 789 # Integer | The wing to rename
naming = RubyEveesiClient::PutFleetsFleetIdWingsWingIdNaming.new({name: 'name_example'}) # PutFleetsFleetIdWingsWingIdNaming | New name of the wing
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Rename fleet wing
  api_instance.put_fleets_fleet_id_wings_wing_id(fleet_id, wing_id, naming, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_wings_wing_id: #{e}"
end
```

#### Using the put_fleets_fleet_id_wings_wing_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, naming, opts)

```ruby
begin
  # Rename fleet wing
  data, status_code, headers = api_instance.put_fleets_fleet_id_wings_wing_id_with_http_info(fleet_id, wing_id, naming, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling FleetsApi->put_fleets_fleet_id_wings_wing_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fleet_id** | **Integer** | ID for a fleet |  |
| **wing_id** | **Integer** | The wing to rename |  |
| **naming** | [**PutFleetsFleetIdWingsWingIdNaming**](PutFleetsFleetIdWingsWingIdNaming.md) | New name of the wing |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

