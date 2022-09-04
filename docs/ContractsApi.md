# RubyEveesiClient::ContractsApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_contracts**](ContractsApi.md#get_characters_character_id_contracts) | **GET** /characters/{character_id}/contracts/ | Get contracts |
| [**get_characters_character_id_contracts_contract_id_bids**](ContractsApi.md#get_characters_character_id_contracts_contract_id_bids) | **GET** /characters/{character_id}/contracts/{contract_id}/bids/ | Get contract bids |
| [**get_characters_character_id_contracts_contract_id_items**](ContractsApi.md#get_characters_character_id_contracts_contract_id_items) | **GET** /characters/{character_id}/contracts/{contract_id}/items/ | Get contract items |
| [**get_contracts_public_bids_contract_id**](ContractsApi.md#get_contracts_public_bids_contract_id) | **GET** /contracts/public/bids/{contract_id}/ | Get public contract bids |
| [**get_contracts_public_items_contract_id**](ContractsApi.md#get_contracts_public_items_contract_id) | **GET** /contracts/public/items/{contract_id}/ | Get public contract items |
| [**get_contracts_public_region_id**](ContractsApi.md#get_contracts_public_region_id) | **GET** /contracts/public/{region_id}/ | Get public contracts |
| [**get_corporations_corporation_id_contracts**](ContractsApi.md#get_corporations_corporation_id_contracts) | **GET** /corporations/{corporation_id}/contracts/ | Get corporation contracts |
| [**get_corporations_corporation_id_contracts_contract_id_bids**](ContractsApi.md#get_corporations_corporation_id_contracts_contract_id_bids) | **GET** /corporations/{corporation_id}/contracts/{contract_id}/bids/ | Get corporation contract bids |
| [**get_corporations_corporation_id_contracts_contract_id_items**](ContractsApi.md#get_corporations_corporation_id_contracts_contract_id_items) | **GET** /corporations/{corporation_id}/contracts/{contract_id}/items/ | Get corporation contract items |


## get_characters_character_id_contracts

> <Array<GetCharactersCharacterIdContracts200Ok>> get_characters_character_id_contracts(character_id, opts)

Get contracts

Returns contracts available to a character, only if the character is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".  --- Alternate route: `/dev/characters/{character_id}/contracts/`  Alternate route: `/legacy/characters/{character_id}/contracts/`  Alternate route: `/v1/characters/{character_id}/contracts/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContractsApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get contracts
  result = api_instance.get_characters_character_id_contracts(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts: #{e}"
end
```

#### Using the get_characters_character_id_contracts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdContracts200Ok>>, Integer, Hash)> get_characters_character_id_contracts_with_http_info(character_id, opts)

```ruby
begin
  # Get contracts
  data, status_code, headers = api_instance.get_characters_character_id_contracts_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdContracts200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdContracts200Ok&gt;**](GetCharactersCharacterIdContracts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contracts_contract_id_bids

> <Array<GetCharactersCharacterIdContractsContractIdBids200Ok>> get_characters_character_id_contracts_contract_id_bids(character_id, contract_id, opts)

Get contract bids

Lists bids on a particular auction contract  --- Alternate route: `/dev/characters/{character_id}/contracts/{contract_id}/bids/`  Alternate route: `/legacy/characters/{character_id}/contracts/{contract_id}/bids/`  Alternate route: `/v1/characters/{character_id}/contracts/{contract_id}/bids/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContractsApi.new
character_id = 56 # Integer | An EVE character ID
contract_id = 56 # Integer | ID of a contract
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get contract bids
  result = api_instance.get_characters_character_id_contracts_contract_id_bids(character_id, contract_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_bids: #{e}"
end
```

#### Using the get_characters_character_id_contracts_contract_id_bids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdContractsContractIdBids200Ok>>, Integer, Hash)> get_characters_character_id_contracts_contract_id_bids_with_http_info(character_id, contract_id, opts)

```ruby
begin
  # Get contract bids
  data, status_code, headers = api_instance.get_characters_character_id_contracts_contract_id_bids_with_http_info(character_id, contract_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdContractsContractIdBids200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_bids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **contract_id** | **Integer** | ID of a contract |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdContractsContractIdBids200Ok&gt;**](GetCharactersCharacterIdContractsContractIdBids200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_contracts_contract_id_items

> <Array<GetCharactersCharacterIdContractsContractIdItems200Ok>> get_characters_character_id_contracts_contract_id_items(character_id, contract_id, opts)

Get contract items

Lists items of a particular contract  --- Alternate route: `/dev/characters/{character_id}/contracts/{contract_id}/items/`  Alternate route: `/legacy/characters/{character_id}/contracts/{contract_id}/items/`  Alternate route: `/v1/characters/{character_id}/contracts/{contract_id}/items/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContractsApi.new
character_id = 56 # Integer | An EVE character ID
contract_id = 56 # Integer | ID of a contract
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get contract items
  result = api_instance.get_characters_character_id_contracts_contract_id_items(character_id, contract_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_items: #{e}"
end
```

#### Using the get_characters_character_id_contracts_contract_id_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdContractsContractIdItems200Ok>>, Integer, Hash)> get_characters_character_id_contracts_contract_id_items_with_http_info(character_id, contract_id, opts)

```ruby
begin
  # Get contract items
  data, status_code, headers = api_instance.get_characters_character_id_contracts_contract_id_items_with_http_info(character_id, contract_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdContractsContractIdItems200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_characters_character_id_contracts_contract_id_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **contract_id** | **Integer** | ID of a contract |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdContractsContractIdItems200Ok&gt;**](GetCharactersCharacterIdContractsContractIdItems200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts_public_bids_contract_id

> <Array<GetContractsPublicBidsContractId200Ok>> get_contracts_public_bids_contract_id(contract_id, opts)

Get public contract bids

Lists bids on a public auction contract  --- Alternate route: `/dev/contracts/public/bids/{contract_id}/`  Alternate route: `/legacy/contracts/public/bids/{contract_id}/`  Alternate route: `/v1/contracts/public/bids/{contract_id}/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56 # Integer | Which page of results to return
}

begin
  # Get public contract bids
  result = api_instance.get_contracts_public_bids_contract_id(contract_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_bids_contract_id: #{e}"
end
```

#### Using the get_contracts_public_bids_contract_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetContractsPublicBidsContractId200Ok>>, Integer, Hash)> get_contracts_public_bids_contract_id_with_http_info(contract_id, opts)

```ruby
begin
  # Get public contract bids
  data, status_code, headers = api_instance.get_contracts_public_bids_contract_id_with_http_info(contract_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetContractsPublicBidsContractId200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_bids_contract_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** | ID of a contract |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |

### Return type

[**Array&lt;GetContractsPublicBidsContractId200Ok&gt;**](GetContractsPublicBidsContractId200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts_public_items_contract_id

> <Array<GetContractsPublicItemsContractId200Ok>> get_contracts_public_items_contract_id(contract_id, opts)

Get public contract items

Lists items of a public contract  --- Alternate route: `/dev/contracts/public/items/{contract_id}/`  Alternate route: `/legacy/contracts/public/items/{contract_id}/`  Alternate route: `/v1/contracts/public/items/{contract_id}/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56 # Integer | Which page of results to return
}

begin
  # Get public contract items
  result = api_instance.get_contracts_public_items_contract_id(contract_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_items_contract_id: #{e}"
end
```

#### Using the get_contracts_public_items_contract_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetContractsPublicItemsContractId200Ok>>, Integer, Hash)> get_contracts_public_items_contract_id_with_http_info(contract_id, opts)

```ruby
begin
  # Get public contract items
  data, status_code, headers = api_instance.get_contracts_public_items_contract_id_with_http_info(contract_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetContractsPublicItemsContractId200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_items_contract_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** | ID of a contract |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |

### Return type

[**Array&lt;GetContractsPublicItemsContractId200Ok&gt;**](GetContractsPublicItemsContractId200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts_public_region_id

> <Array<GetContractsPublicRegionId200Ok>> get_contracts_public_region_id(region_id, opts)

Get public contracts

Returns a paginated list of all public contracts in the given region  --- Alternate route: `/dev/contracts/public/{region_id}/`  Alternate route: `/legacy/contracts/public/{region_id}/`  Alternate route: `/v1/contracts/public/{region_id}/`  --- This route is cached for up to 1800 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'

api_instance = RubyEveesiClient::ContractsApi.new
region_id = 56 # Integer | An EVE region id
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56 # Integer | Which page of results to return
}

begin
  # Get public contracts
  result = api_instance.get_contracts_public_region_id(region_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_region_id: #{e}"
end
```

#### Using the get_contracts_public_region_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetContractsPublicRegionId200Ok>>, Integer, Hash)> get_contracts_public_region_id_with_http_info(region_id, opts)

```ruby
begin
  # Get public contracts
  data, status_code, headers = api_instance.get_contracts_public_region_id_with_http_info(region_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetContractsPublicRegionId200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_public_region_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_id** | **Integer** | An EVE region id |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |

### Return type

[**Array&lt;GetContractsPublicRegionId200Ok&gt;**](GetContractsPublicRegionId200Ok.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contracts

> <Array<GetCorporationsCorporationIdContracts200Ok>> get_corporations_corporation_id_contracts(corporation_id, opts)

Get corporation contracts

Returns contracts available to a corporation, only if the corporation is issuer, acceptor or assignee. Only returns contracts no older than 30 days, or if the status is \"in_progress\".  --- Alternate route: `/dev/corporations/{corporation_id}/contracts/`  Alternate route: `/legacy/corporations/{corporation_id}/contracts/`  Alternate route: `/v1/corporations/{corporation_id}/contracts/`  --- This route is cached for up to 300 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContractsApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation contracts
  result = api_instance.get_corporations_corporation_id_contracts(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts: #{e}"
end
```

#### Using the get_corporations_corporation_id_contracts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdContracts200Ok>>, Integer, Hash)> get_corporations_corporation_id_contracts_with_http_info(corporation_id, opts)

```ruby
begin
  # Get corporation contracts
  data, status_code, headers = api_instance.get_corporations_corporation_id_contracts_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdContracts200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdContracts200Ok&gt;**](GetCorporationsCorporationIdContracts200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contracts_contract_id_bids

> <Array<GetCorporationsCorporationIdContractsContractIdBids200Ok>> get_corporations_corporation_id_contracts_contract_id_bids(contract_id, corporation_id, opts)

Get corporation contract bids

Lists bids on a particular auction contract  --- Alternate route: `/dev/corporations/{corporation_id}/contracts/{contract_id}/bids/`  Alternate route: `/legacy/corporations/{corporation_id}/contracts/{contract_id}/bids/`  Alternate route: `/v1/corporations/{corporation_id}/contracts/{contract_id}/bids/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation contract bids
  result = api_instance.get_corporations_corporation_id_contracts_contract_id_bids(contract_id, corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_bids: #{e}"
end
```

#### Using the get_corporations_corporation_id_contracts_contract_id_bids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdContractsContractIdBids200Ok>>, Integer, Hash)> get_corporations_corporation_id_contracts_contract_id_bids_with_http_info(contract_id, corporation_id, opts)

```ruby
begin
  # Get corporation contract bids
  data, status_code, headers = api_instance.get_corporations_corporation_id_contracts_contract_id_bids_with_http_info(contract_id, corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdContractsContractIdBids200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_bids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** | ID of a contract |  |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdContractsContractIdBids200Ok&gt;**](GetCorporationsCorporationIdContractsContractIdBids200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_contracts_contract_id_items

> <Array<GetCorporationsCorporationIdContractsContractIdItems200Ok>> get_corporations_corporation_id_contracts_contract_id_items(contract_id, corporation_id, opts)

Get corporation contract items

Lists items of a particular contract  --- Alternate route: `/dev/corporations/{corporation_id}/contracts/{contract_id}/items/`  Alternate route: `/legacy/corporations/{corporation_id}/contracts/{contract_id}/items/`  Alternate route: `/v1/corporations/{corporation_id}/contracts/{contract_id}/items/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::ContractsApi.new
contract_id = 56 # Integer | ID of a contract
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation contract items
  result = api_instance.get_corporations_corporation_id_contracts_contract_id_items(contract_id, corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_items: #{e}"
end
```

#### Using the get_corporations_corporation_id_contracts_contract_id_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdContractsContractIdItems200Ok>>, Integer, Hash)> get_corporations_corporation_id_contracts_contract_id_items_with_http_info(contract_id, corporation_id, opts)

```ruby
begin
  # Get corporation contract items
  data, status_code, headers = api_instance.get_corporations_corporation_id_contracts_contract_id_items_with_http_info(contract_id, corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdContractsContractIdItems200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling ContractsApi->get_corporations_corporation_id_contracts_contract_id_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **Integer** | ID of a contract |  |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdContractsContractIdItems200Ok&gt;**](GetCorporationsCorporationIdContractsContractIdItems200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

