# RubyEveesiClient::OpportunitiesApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_opportunities**](OpportunitiesApi.md#get_characters_character_id_opportunities) | **GET** /characters/{character_id}/opportunities/ | Get a character&#39;s completed tasks |
| [**get_opportunities_groups**](OpportunitiesApi.md#get_opportunities_groups) | **GET** /opportunities/groups/ | Get opportunities groups |
| [**get_opportunities_groups_group_id**](OpportunitiesApi.md#get_opportunities_groups_group_id) | **GET** /opportunities/groups/{group_id}/ | Get opportunities group |
| [**get_opportunities_tasks**](OpportunitiesApi.md#get_opportunities_tasks) | **GET** /opportunities/tasks/ | Get opportunities tasks |
| [**get_opportunities_tasks_task_id**](OpportunitiesApi.md#get_opportunities_tasks_task_id) | **GET** /opportunities/tasks/{task_id}/ | Get opportunities task |


## get_characters_character_id_opportunities

> <Array<GetCharactersCharacterIdOpportunities200Ok>> get_characters_character_id_opportunities(character_id, opts)

Get a character's completed tasks

Return a list of tasks finished by a character  --- Alternate route: `/dev/characters/{character_id}/opportunities/`  Alternate route: `/legacy/characters/{character_id}/opportunities/`  Alternate route: `/v1/characters/{character_id}/opportunities/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::OpportunitiesApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get a character's completed tasks
  result = api_instance.get_characters_character_id_opportunities(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_characters_character_id_opportunities: #{e}"
end
```

#### Using the get_characters_character_id_opportunities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdOpportunities200Ok>>, Integer, Hash)> get_characters_character_id_opportunities_with_http_info(character_id, opts)

```ruby
begin
  # Get a character's completed tasks
  data, status_code, headers = api_instance.get_characters_character_id_opportunities_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdOpportunities200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_characters_character_id_opportunities_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdOpportunities200Ok&gt;**](GetCharactersCharacterIdOpportunities200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_opportunities_groups

> Array&lt;Integer&gt; get_opportunities_groups(opts)

Get opportunities groups

Return a list of opportunities groups  --- Alternate route: `/dev/opportunities/groups/`  Alternate route: `/legacy/opportunities/groups/`  Alternate route: `/v1/opportunities/groups/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::OpportunitiesApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get opportunities groups
  result = api_instance.get_opportunities_groups(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_groups: #{e}"
end
```

#### Using the get_opportunities_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_opportunities_groups_with_http_info(opts)

```ruby
begin
  # Get opportunities groups
  data, status_code, headers = api_instance.get_opportunities_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_groups_with_http_info: #{e}"
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


## get_opportunities_groups_group_id

> <GetOpportunitiesGroupsGroupIdOk> get_opportunities_groups_group_id(group_id, opts)

Get opportunities group

Return information of an opportunities group  --- Alternate route: `/dev/opportunities/groups/{group_id}/`  Alternate route: `/legacy/opportunities/groups/{group_id}/`  Alternate route: `/v1/opportunities/groups/{group_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::OpportunitiesApi.new
group_id = 56 # Integer | ID of an opportunities group
opts = {
  accept_language: 'en', # String | Language to use in the response
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  language: 'en' # String | Language to use in the response, takes precedence over Accept-Language
}

begin
  # Get opportunities group
  result = api_instance.get_opportunities_groups_group_id(group_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_groups_group_id: #{e}"
end
```

#### Using the get_opportunities_groups_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOpportunitiesGroupsGroupIdOk>, Integer, Hash)> get_opportunities_groups_group_id_with_http_info(group_id, opts)

```ruby
begin
  # Get opportunities group
  data, status_code, headers = api_instance.get_opportunities_groups_group_id_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOpportunitiesGroupsGroupIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_groups_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **Integer** | ID of an opportunities group |  |
| **accept_language** | **String** | Language to use in the response | [optional][default to &#39;en&#39;] |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **language** | **String** | Language to use in the response, takes precedence over Accept-Language | [optional][default to &#39;en&#39;] |

### Return type

[**GetOpportunitiesGroupsGroupIdOk**](GetOpportunitiesGroupsGroupIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_opportunities_tasks

> Array&lt;Integer&gt; get_opportunities_tasks(opts)

Get opportunities tasks

Return a list of opportunities tasks  --- Alternate route: `/dev/opportunities/tasks/`  Alternate route: `/legacy/opportunities/tasks/`  Alternate route: `/v1/opportunities/tasks/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::OpportunitiesApi.new
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get opportunities tasks
  result = api_instance.get_opportunities_tasks(opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_tasks: #{e}"
end
```

#### Using the get_opportunities_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> get_opportunities_tasks_with_http_info(opts)

```ruby
begin
  # Get opportunities tasks
  data, status_code, headers = api_instance.get_opportunities_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_tasks_with_http_info: #{e}"
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


## get_opportunities_tasks_task_id

> <GetOpportunitiesTasksTaskIdOk> get_opportunities_tasks_task_id(task_id, opts)

Get opportunities task

Return information of an opportunities task  --- Alternate route: `/dev/opportunities/tasks/{task_id}/`  Alternate route: `/legacy/opportunities/tasks/{task_id}/`  Alternate route: `/v1/opportunities/tasks/{task_id}/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::OpportunitiesApi.new
task_id = 56 # Integer | ID of an opportunities task
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # Get opportunities task
  result = api_instance.get_opportunities_tasks_task_id(task_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_tasks_task_id: #{e}"
end
```

#### Using the get_opportunities_tasks_task_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOpportunitiesTasksTaskIdOk>, Integer, Hash)> get_opportunities_tasks_task_id_with_http_info(task_id, opts)

```ruby
begin
  # Get opportunities task
  data, status_code, headers = api_instance.get_opportunities_tasks_task_id_with_http_info(task_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOpportunitiesTasksTaskIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling OpportunitiesApi->get_opportunities_tasks_task_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** | ID of an opportunities task |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**GetOpportunitiesTasksTaskIdOk**](GetOpportunitiesTasksTaskIdOk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

