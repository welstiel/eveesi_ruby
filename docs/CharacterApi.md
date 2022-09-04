# RubyEveesiClient::CharacterApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id**](CharacterApi.md#get_characters_character_id) | **GET** /characters/{character_id}/ | Get character&#39;s public information |
| [**get_characters_character_id_agents_research**](CharacterApi.md#get_characters_character_id_agents_research) | **GET** /characters/{character_id}/agents_research/ | Get agents research |
| [**get_characters_character_id_blueprints**](CharacterApi.md#get_characters_character_id_blueprints) | **GET** /characters/{character_id}/blueprints/ | Get blueprints |
| [**get_characters_character_id_corporationhistory**](CharacterApi.md#get_characters_character_id_corporationhistory) | **GET** /characters/{character_id}/corporationhistory/ | Get corporation history |
| [**get_characters_character_id_fatigue**](CharacterApi.md#get_characters_character_id_fatigue) | **GET** /characters/{character_id}/fatigue/ | Get jump fatigue |
| [**get_characters_character_id_medals**](CharacterApi.md#get_characters_character_id_medals) | **GET** /characters/{character_id}/medals/ | Get medals |
| [**get_characters_character_id_notifications**](CharacterApi.md#get_characters_character_id_notifications) | **GET** /characters/{character_id}/notifications/ | Get character notifications |
| [**get_characters_character_id_notifications_contacts**](CharacterApi.md#get_characters_character_id_notifications_contacts) | **GET** /characters/{character_id}/notifications/contacts/ | Get new contact notifications |
| [**get_characters_character_id_portrait**](CharacterApi.md#get_characters_character_id_portrait) | **GET** /characters/{character_id}/portrait/ | Get character portraits |
| [**get_characters_character_id_roles**](CharacterApi.md#get_characters_character_id_roles) | **GET** /characters/{character_id}/roles/ | Get character corporation roles |
| [**get_characters_character_id_standings**](CharacterApi.md#get_characters_character_id_standings) | **GET** /characters/{character_id}/standings/ | Get standings |
| [**get_characters_character_id_titles**](CharacterApi.md#get_characters_character_id_titles) | **GET** /characters/{character_id}/titles/ | Get character corporation titles |
| [**post_characters_affiliation**](CharacterApi.md#post_characters_affiliation) | **POST** /characters/affiliation/ | Character affiliation |
| [**post_characters_character_id_cspa**](CharacterApi.md#post_characters_character_id_cspa) | **POST** /characters/{character_id}/cspa/ | Calculate a CSPA charge cost |


## get_characters_character_id

> <GetCharactersCharacterIdOk> get_characters_character_id(character_id, opts)

Get character's public information

Public information about a character  --- Alternate route: `/dev/characters/{character_id}/`  Alternate route: `/legacy/characters/{character_id}/`  Alternate route: `/v5/characters/{character_id}/`  --- This route is cached for up to 86400 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get character's public information
  result = api_instance.get_characters_character_id(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id: #{e}"
end
```

#### Using the get_characters_character_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdOk>, Integer, Hash)> get_characters_character_id_with_http_info(character_id, opts)

```ruby
begin
  # Get character's public information
  data, status_code, headers = api_instance.get_characters_character_id_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetCharactersCharacterIdOk**](GetCharactersCharacterIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_agents_research

> <Array<GetCharactersCharacterIdAgentsResearch200Ok>> get_characters_character_id_agents_research(character_id, opts)

Get agents research

Return a list of agents research information for a character. The formula for finding the current research points with an agent is: currentPoints = remainderPoints + pointsPerDay * days(currentTime - researchStartDate)  --- Alternate route: `/dev/characters/{character_id}/agents_research/`  Alternate route: `/v2/characters/{character_id}/agents_research/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get agents research
  result = api_instance.get_characters_character_id_agents_research(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_agents_research: #{e}"
end
```

#### Using the get_characters_character_id_agents_research_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdAgentsResearch200Ok>>, Integer, Hash)> get_characters_character_id_agents_research_with_http_info(character_id, opts)

```ruby
begin
  # Get agents research
  data, status_code, headers = api_instance.get_characters_character_id_agents_research_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdAgentsResearch200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_agents_research_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdAgentsResearch200Ok&gt;**](GetCharactersCharacterIdAgentsResearch200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_blueprints

> <Array<GetCharactersCharacterIdBlueprints200Ok>> get_characters_character_id_blueprints(character_id, opts)

Get blueprints

Return a list of blueprints the character owns  --- Alternate route: `/dev/characters/{character_id}/blueprints/`  Alternate route: `/v3/characters/{character_id}/blueprints/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get blueprints
  result = api_instance.get_characters_character_id_blueprints(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_blueprints: #{e}"
end
```

#### Using the get_characters_character_id_blueprints_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdBlueprints200Ok>>, Integer, Hash)> get_characters_character_id_blueprints_with_http_info(character_id, opts)

```ruby
begin
  # Get blueprints
  data, status_code, headers = api_instance.get_characters_character_id_blueprints_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdBlueprints200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_blueprints_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdBlueprints200Ok&gt;**](GetCharactersCharacterIdBlueprints200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_corporationhistory

> <Array<GetCharactersCharacterIdCorporationhistory200Ok>> get_characters_character_id_corporationhistory(character_id, opts)

Get corporation history

Get a list of all the corporations a character has been a member of  --- Alternate route: `/dev/characters/{character_id}/corporationhistory/`  Alternate route: `/v2/characters/{character_id}/corporationhistory/`  --- This route is cached for up to 86400 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get corporation history
  result = api_instance.get_characters_character_id_corporationhistory(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_corporationhistory: #{e}"
end
```

#### Using the get_characters_character_id_corporationhistory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdCorporationhistory200Ok>>, Integer, Hash)> get_characters_character_id_corporationhistory_with_http_info(character_id, opts)

```ruby
begin
  # Get corporation history
  data, status_code, headers = api_instance.get_characters_character_id_corporationhistory_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdCorporationhistory200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_corporationhistory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdCorporationhistory200Ok&gt;**](GetCharactersCharacterIdCorporationhistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_fatigue

> <GetCharactersCharacterIdFatigueOk> get_characters_character_id_fatigue(character_id, opts)

Get jump fatigue

Return a character's jump activation and fatigue information  --- Alternate route: `/dev/characters/{character_id}/fatigue/`  Alternate route: `/v2/characters/{character_id}/fatigue/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get jump fatigue
  result = api_instance.get_characters_character_id_fatigue(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_fatigue: #{e}"
end
```

#### Using the get_characters_character_id_fatigue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdFatigueOk>, Integer, Hash)> get_characters_character_id_fatigue_with_http_info(character_id, opts)

```ruby
begin
  # Get jump fatigue
  data, status_code, headers = api_instance.get_characters_character_id_fatigue_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdFatigueOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_fatigue_with_http_info: #{e}"
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

[**GetCharactersCharacterIdFatigueOk**](GetCharactersCharacterIdFatigueOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_medals

> <Array<GetCharactersCharacterIdMedals200Ok>> get_characters_character_id_medals(character_id, opts)

Get medals

Return a list of medals the character has  --- Alternate route: `/dev/characters/{character_id}/medals/`  Alternate route: `/v2/characters/{character_id}/medals/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get medals
  result = api_instance.get_characters_character_id_medals(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_medals: #{e}"
end
```

#### Using the get_characters_character_id_medals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdMedals200Ok>>, Integer, Hash)> get_characters_character_id_medals_with_http_info(character_id, opts)

```ruby
begin
  # Get medals
  data, status_code, headers = api_instance.get_characters_character_id_medals_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdMedals200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_medals_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdMedals200Ok&gt;**](GetCharactersCharacterIdMedals200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_notifications

> <Array<GetCharactersCharacterIdNotifications200Ok>> get_characters_character_id_notifications(character_id, opts)

Get character notifications

Return character notifications  --- Alternate route: `/dev/characters/{character_id}/notifications/`  Alternate route: `/v5/characters/{character_id}/notifications/`  Alternate route: `/v6/characters/{character_id}/notifications/`  --- This route is cached for up to 600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character notifications
  result = api_instance.get_characters_character_id_notifications(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_notifications: #{e}"
end
```

#### Using the get_characters_character_id_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdNotifications200Ok>>, Integer, Hash)> get_characters_character_id_notifications_with_http_info(character_id, opts)

```ruby
begin
  # Get character notifications
  data, status_code, headers = api_instance.get_characters_character_id_notifications_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdNotifications200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_notifications_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdNotifications200Ok&gt;**](GetCharactersCharacterIdNotifications200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_notifications_contacts

> <Array<GetCharactersCharacterIdNotificationsContacts200Ok>> get_characters_character_id_notifications_contacts(character_id, opts)

Get new contact notifications

Return notifications about having been added to someone's contact list  --- Alternate route: `/dev/characters/{character_id}/notifications/contacts/`  Alternate route: `/v2/characters/{character_id}/notifications/contacts/`  --- This route is cached for up to 600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get new contact notifications
  result = api_instance.get_characters_character_id_notifications_contacts(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_notifications_contacts: #{e}"
end
```

#### Using the get_characters_character_id_notifications_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdNotificationsContacts200Ok>>, Integer, Hash)> get_characters_character_id_notifications_contacts_with_http_info(character_id, opts)

```ruby
begin
  # Get new contact notifications
  data, status_code, headers = api_instance.get_characters_character_id_notifications_contacts_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdNotificationsContacts200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_notifications_contacts_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdNotificationsContacts200Ok&gt;**](GetCharactersCharacterIdNotificationsContacts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_portrait

> <GetCharactersCharacterIdPortraitOk> get_characters_character_id_portrait(character_id, opts)

Get character portraits

Get portrait urls for a character  --- Alternate route: `/dev/characters/{character_id}/portrait/`  Alternate route: `/v2/characters/{character_id}/portrait/`  Alternate route: `/v3/characters/{character_id}/portrait/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get character portraits
  result = api_instance.get_characters_character_id_portrait(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_portrait: #{e}"
end
```

#### Using the get_characters_character_id_portrait_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdPortraitOk>, Integer, Hash)> get_characters_character_id_portrait_with_http_info(character_id, opts)

```ruby
begin
  # Get character portraits
  data, status_code, headers = api_instance.get_characters_character_id_portrait_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdPortraitOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_portrait_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetCharactersCharacterIdPortraitOk**](GetCharactersCharacterIdPortraitOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_roles

> <GetCharactersCharacterIdRolesOk> get_characters_character_id_roles(character_id, opts)

Get character corporation roles

Returns a character's corporation roles  --- Alternate route: `/dev/characters/{character_id}/roles/`  Alternate route: `/v3/characters/{character_id}/roles/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character corporation roles
  result = api_instance.get_characters_character_id_roles(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_roles: #{e}"
end
```

#### Using the get_characters_character_id_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdRolesOk>, Integer, Hash)> get_characters_character_id_roles_with_http_info(character_id, opts)

```ruby
begin
  # Get character corporation roles
  data, status_code, headers = api_instance.get_characters_character_id_roles_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdRolesOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_roles_with_http_info: #{e}"
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

[**GetCharactersCharacterIdRolesOk**](GetCharactersCharacterIdRolesOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_standings

> <Array<GetCharactersCharacterIdStandings200Ok>> get_characters_character_id_standings(character_id, opts)

Get standings

Return character standings from agents, NPC corporations, and factions  --- Alternate route: `/dev/characters/{character_id}/standings/`  Alternate route: `/v2/characters/{character_id}/standings/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get standings
  result = api_instance.get_characters_character_id_standings(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_standings: #{e}"
end
```

#### Using the get_characters_character_id_standings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdStandings200Ok>>, Integer, Hash)> get_characters_character_id_standings_with_http_info(character_id, opts)

```ruby
begin
  # Get standings
  data, status_code, headers = api_instance.get_characters_character_id_standings_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdStandings200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_standings_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdStandings200Ok&gt;**](GetCharactersCharacterIdStandings200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_titles

> <Array<GetCharactersCharacterIdTitles200Ok>> get_characters_character_id_titles(character_id, opts)

Get character corporation titles

Returns a character's titles  --- Alternate route: `/dev/characters/{character_id}/titles/`  Alternate route: `/v2/characters/{character_id}/titles/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character corporation titles
  result = api_instance.get_characters_character_id_titles(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_titles: #{e}"
end
```

#### Using the get_characters_character_id_titles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdTitles200Ok>>, Integer, Hash)> get_characters_character_id_titles_with_http_info(character_id, opts)

```ruby
begin
  # Get character corporation titles
  data, status_code, headers = api_instance.get_characters_character_id_titles_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdTitles200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->get_characters_character_id_titles_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdTitles200Ok&gt;**](GetCharactersCharacterIdTitles200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_characters_affiliation

> <Array<PostCharactersAffiliation200Ok>> post_characters_affiliation(characters, opts)

Character affiliation

Bulk lookup of character IDs to corporation, alliance and faction  --- Alternate route: `/dev/characters/affiliation/`  Alternate route: `/v2/characters/affiliation/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::CharacterApi.new
characters = [37] # Array<Integer> | The character IDs to fetch affiliations for. All characters must exist, or none will be returned
opts = {
  datasource: 'tranquility' # String | The server name you would like data from
}

begin
  # Character affiliation
  result = api_instance.post_characters_affiliation(characters, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->post_characters_affiliation: #{e}"
end
```

#### Using the post_characters_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PostCharactersAffiliation200Ok>>, Integer, Hash)> post_characters_affiliation_with_http_info(characters, opts)

```ruby
begin
  # Character affiliation
  data, status_code, headers = api_instance.post_characters_affiliation_with_http_info(characters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PostCharactersAffiliation200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->post_characters_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **characters** | [**Array&lt;Integer&gt;**](Integer.md) | The character IDs to fetch affiliations for. All characters must exist, or none will be returned |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |

### Return type

[**Array&lt;PostCharactersAffiliation200Ok&gt;**](PostCharactersAffiliation200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_characters_character_id_cspa

> Float post_characters_character_id_cspa(character_id, characters, opts)

Calculate a CSPA charge cost

Takes a source character ID in the url and a set of target character ID's in the body, returns a CSPA charge cost  --- Alternate route: `/dev/characters/{character_id}/cspa/`  Alternate route: `/v5/characters/{character_id}/cspa/` 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CharacterApi.new
character_id = 56 # Integer | An EVE character ID
characters = [37] # Array<Integer> | The target characters to calculate the charge for
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Calculate a CSPA charge cost
  result = api_instance.post_characters_character_id_cspa(character_id, characters, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->post_characters_character_id_cspa: #{e}"
end
```

#### Using the post_characters_character_id_cspa_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Float, Integer, Hash)> post_characters_character_id_cspa_with_http_info(character_id, characters, opts)

```ruby
begin
  # Calculate a CSPA charge cost
  data, status_code, headers = api_instance.post_characters_character_id_cspa_with_http_info(character_id, characters, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Float
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CharacterApi->post_characters_character_id_cspa_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **characters** | [**Array&lt;Integer&gt;**](Integer.md) | The target characters to calculate the charge for |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

**Float**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

