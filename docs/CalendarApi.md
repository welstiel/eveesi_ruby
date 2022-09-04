# RubyEveesiClient::CalendarApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_calendar**](CalendarApi.md#get_characters_character_id_calendar) | **GET** /characters/{character_id}/calendar/ | List calendar event summaries |
| [**get_characters_character_id_calendar_event_id**](CalendarApi.md#get_characters_character_id_calendar_event_id) | **GET** /characters/{character_id}/calendar/{event_id}/ | Get an event |
| [**get_characters_character_id_calendar_event_id_attendees**](CalendarApi.md#get_characters_character_id_calendar_event_id_attendees) | **GET** /characters/{character_id}/calendar/{event_id}/attendees/ | Get attendees |
| [**put_characters_character_id_calendar_event_id**](CalendarApi.md#put_characters_character_id_calendar_event_id) | **PUT** /characters/{character_id}/calendar/{event_id}/ | Respond to an event |


## get_characters_character_id_calendar

> <Array<GetCharactersCharacterIdCalendar200Ok>> get_characters_character_id_calendar(character_id, opts)

List calendar event summaries

Get 50 event summaries from the calendar. If no from_event ID is given, the resource will return the next 50 chronological event summaries from now. If a from_event ID is specified, it will return the next 50 chronological event summaries from after that event  --- Alternate route: `/dev/characters/{character_id}/calendar/`  Alternate route: `/legacy/characters/{character_id}/calendar/`  Alternate route: `/v1/characters/{character_id}/calendar/`  Alternate route: `/v2/characters/{character_id}/calendar/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CalendarApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  from_event: 56, # Integer | The event ID to retrieve events from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # List calendar event summaries
  result = api_instance.get_characters_character_id_calendar(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar: #{e}"
end
```

#### Using the get_characters_character_id_calendar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdCalendar200Ok>>, Integer, Hash)> get_characters_character_id_calendar_with_http_info(character_id, opts)

```ruby
begin
  # List calendar event summaries
  data, status_code, headers = api_instance.get_characters_character_id_calendar_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdCalendar200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **from_event** | **Integer** | The event ID to retrieve events from | [optional] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdCalendar200Ok&gt;**](GetCharactersCharacterIdCalendar200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_calendar_event_id

> <GetCharactersCharacterIdCalendarEventIdOk> get_characters_character_id_calendar_event_id(character_id, event_id, opts)

Get an event

Get all the information for a specific event  --- Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/legacy/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v4/characters/{character_id}/calendar/{event_id}/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CalendarApi.new
character_id = 56 # Integer | An EVE character ID
event_id = 56 # Integer | The id of the event requested
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get an event
  result = api_instance.get_characters_character_id_calendar_event_id(character_id, event_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id: #{e}"
end
```

#### Using the get_characters_character_id_calendar_event_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCharactersCharacterIdCalendarEventIdOk>, Integer, Hash)> get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, opts)

```ruby
begin
  # Get an event
  data, status_code, headers = api_instance.get_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCharactersCharacterIdCalendarEventIdOk>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **event_id** | **Integer** | The id of the event requested |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**GetCharactersCharacterIdCalendarEventIdOk**](GetCharactersCharacterIdCalendarEventIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_calendar_event_id_attendees

> <Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok>> get_characters_character_id_calendar_event_id_attendees(character_id, event_id, opts)

Get attendees

Get all invited attendees for a given event  --- Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/attendees/`  Alternate route: `/legacy/characters/{character_id}/calendar/{event_id}/attendees/`  Alternate route: `/v1/characters/{character_id}/calendar/{event_id}/attendees/`  Alternate route: `/v2/characters/{character_id}/calendar/{event_id}/attendees/`  --- This route is cached for up to 600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CalendarApi.new
character_id = 56 # Integer | An EVE character ID
event_id = 56 # Integer | The id of the event requested
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get attendees
  result = api_instance.get_characters_character_id_calendar_event_id_attendees(character_id, event_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id_attendees: #{e}"
end
```

#### Using the get_characters_character_id_calendar_event_id_attendees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok>>, Integer, Hash)> get_characters_character_id_calendar_event_id_attendees_with_http_info(character_id, event_id, opts)

```ruby
begin
  # Get attendees
  data, status_code, headers = api_instance.get_characters_character_id_calendar_event_id_attendees_with_http_info(character_id, event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdCalendarEventIdAttendees200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->get_characters_character_id_calendar_event_id_attendees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **event_id** | **Integer** | The id of the event requested |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdCalendarEventIdAttendees200Ok&gt;**](GetCharactersCharacterIdCalendarEventIdAttendees200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_characters_character_id_calendar_event_id

> put_characters_character_id_calendar_event_id(character_id, event_id, response, opts)

Respond to an event

Set your response status to an event  --- Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/legacy/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v4/characters/{character_id}/calendar/{event_id}/`  --- This route is cached for up to 5 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::CalendarApi.new
character_id = 56 # Integer | An EVE character ID
event_id = 56 # Integer | The ID of the event requested
response = RubyEveesiClient::PutCharactersCharacterIdCalendarEventIdResponse.new({response: 'accepted'}) # PutCharactersCharacterIdCalendarEventIdResponse | The response value to set, overriding current value
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Respond to an event
  api_instance.put_characters_character_id_calendar_event_id(character_id, event_id, response, opts)
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->put_characters_character_id_calendar_event_id: #{e}"
end
```

#### Using the put_characters_character_id_calendar_event_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, response, opts)

```ruby
begin
  # Respond to an event
  data, status_code, headers = api_instance.put_characters_character_id_calendar_event_id_with_http_info(character_id, event_id, response, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling CalendarApi->put_characters_character_id_calendar_event_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **event_id** | **Integer** | The ID of the event requested |  |
| **response** | [**PutCharactersCharacterIdCalendarEventIdResponse**](PutCharactersCharacterIdCalendarEventIdResponse.md) | The response value to set, overriding current value |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

