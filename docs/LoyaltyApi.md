# RubyEveesiClient::LoyaltyApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_loyalty_points**](LoyaltyApi.md#get_characters_character_id_loyalty_points) | **GET** /characters/{character_id}/loyalty/points/ | Get loyalty points |
| [**get_loyalty_stores_corporation_id_offers**](LoyaltyApi.md#get_loyalty_stores_corporation_id_offers) | **GET** /loyalty/stores/{corporation_id}/offers/ | List loyalty store offers |


## get_characters_character_id_loyalty_points

> <Array<GetCharactersCharacterIdLoyaltyPoints200Ok>> get_characters_character_id_loyalty_points(character_id, opts)

Get loyalty points

Return a list of loyalty points for all corporations the character has worked for  --- Alternate route: `/dev/characters/{character_id}/loyalty/points/`  Alternate route: `/legacy/characters/{character_id}/loyalty/points/`  Alternate route: `/v1/characters/{character_id}/loyalty/points/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::LoyaltyApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get loyalty points
  result = api_instance.get_characters_character_id_loyalty_points(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LoyaltyApi->get_characters_character_id_loyalty_points: #{e}"
end
```

#### Using the get_characters_character_id_loyalty_points_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdLoyaltyPoints200Ok>>, Integer, Hash)> get_characters_character_id_loyalty_points_with_http_info(character_id, opts)

```ruby
begin
  # Get loyalty points
  data, status_code, headers = api_instance.get_characters_character_id_loyalty_points_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdLoyaltyPoints200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LoyaltyApi->get_characters_character_id_loyalty_points_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdLoyaltyPoints200Ok&gt;**](GetCharactersCharacterIdLoyaltyPoints200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_stores_corporation_id_offers

> <Array<GetLoyaltyStoresCorporationIdOffers200Ok>> get_loyalty_stores_corporation_id_offers(corporation_id, opts)

List loyalty store offers

Return a list of offers from a specific corporation's loyalty store  --- Alternate route: `/dev/loyalty/stores/{corporation_id}/offers/`  Alternate route: `/legacy/loyalty/stores/{corporation_id}/offers/`  Alternate route: `/v1/loyalty/stores/{corporation_id}/offers/`  --- This route expires daily at 11:05

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::LoyaltyApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example' # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  # List loyalty store offers
  result = api_instance.get_loyalty_stores_corporation_id_offers(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LoyaltyApi->get_loyalty_stores_corporation_id_offers: #{e}"
end
```

#### Using the get_loyalty_stores_corporation_id_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetLoyaltyStoresCorporationIdOffers200Ok>>, Integer, Hash)> get_loyalty_stores_corporation_id_offers_with_http_info(corporation_id, opts)

```ruby
begin
  # List loyalty store offers
  data, status_code, headers = api_instance.get_loyalty_stores_corporation_id_offers_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetLoyaltyStoresCorporationIdOffers200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling LoyaltyApi->get_loyalty_stores_corporation_id_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |

### Return type

[**Array&lt;GetLoyaltyStoresCorporationIdOffers200Ok&gt;**](GetLoyaltyStoresCorporationIdOffers200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

