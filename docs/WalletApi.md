# RubyEveesiClient::WalletApi

All URIs are relative to *https://esi.evetech.net/latest*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_characters_character_id_wallet**](WalletApi.md#get_characters_character_id_wallet) | **GET** /characters/{character_id}/wallet/ | Get a character&#39;s wallet balance |
| [**get_characters_character_id_wallet_journal**](WalletApi.md#get_characters_character_id_wallet_journal) | **GET** /characters/{character_id}/wallet/journal/ | Get character wallet journal |
| [**get_characters_character_id_wallet_transactions**](WalletApi.md#get_characters_character_id_wallet_transactions) | **GET** /characters/{character_id}/wallet/transactions/ | Get wallet transactions |
| [**get_corporations_corporation_id_wallets**](WalletApi.md#get_corporations_corporation_id_wallets) | **GET** /corporations/{corporation_id}/wallets/ | Returns a corporation&#39;s wallet balance |
| [**get_corporations_corporation_id_wallets_division_journal**](WalletApi.md#get_corporations_corporation_id_wallets_division_journal) | **GET** /corporations/{corporation_id}/wallets/{division}/journal/ | Get corporation wallet journal |
| [**get_corporations_corporation_id_wallets_division_transactions**](WalletApi.md#get_corporations_corporation_id_wallets_division_transactions) | **GET** /corporations/{corporation_id}/wallets/{division}/transactions/ | Get corporation wallet transactions |


## get_characters_character_id_wallet

> Float get_characters_character_id_wallet(character_id, opts)

Get a character's wallet balance

Returns a character's wallet balance  --- Alternate route: `/legacy/characters/{character_id}/wallet/`  Alternate route: `/v1/characters/{character_id}/wallet/`  --- This route is cached for up to 120 seconds  --- [Diff of the upcoming changes](https://esi.evetech.net/diff/latest/dev/#GET-/characters/{character_id}/wallet/)

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::WalletApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get a character's wallet balance
  result = api_instance.get_characters_character_id_wallet(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet: #{e}"
end
```

#### Using the get_characters_character_id_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Float, Integer, Hash)> get_characters_character_id_wallet_with_http_info(character_id, opts)

```ruby
begin
  # Get a character's wallet balance
  data, status_code, headers = api_instance.get_characters_character_id_wallet_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Float
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_with_http_info: #{e}"
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

**Float**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_wallet_journal

> <Array<GetCharactersCharacterIdWalletJournal200Ok>> get_characters_character_id_wallet_journal(character_id, opts)

Get character wallet journal

Retrieve the given character's wallet journal going 30 days back  --- Alternate route: `/dev/characters/{character_id}/wallet/journal/`  Alternate route: `/v6/characters/{character_id}/wallet/journal/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::WalletApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get character wallet journal
  result = api_instance.get_characters_character_id_wallet_journal(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_journal: #{e}"
end
```

#### Using the get_characters_character_id_wallet_journal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdWalletJournal200Ok>>, Integer, Hash)> get_characters_character_id_wallet_journal_with_http_info(character_id, opts)

```ruby
begin
  # Get character wallet journal
  data, status_code, headers = api_instance.get_characters_character_id_wallet_journal_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdWalletJournal200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_journal_with_http_info: #{e}"
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

[**Array&lt;GetCharactersCharacterIdWalletJournal200Ok&gt;**](GetCharactersCharacterIdWalletJournal200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_characters_character_id_wallet_transactions

> <Array<GetCharactersCharacterIdWalletTransactions200Ok>> get_characters_character_id_wallet_transactions(character_id, opts)

Get wallet transactions

Get wallet transactions of a character  --- Alternate route: `/dev/characters/{character_id}/wallet/transactions/`  Alternate route: `/legacy/characters/{character_id}/wallet/transactions/`  Alternate route: `/v1/characters/{character_id}/wallet/transactions/`  --- This route is cached for up to 3600 seconds

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::WalletApi.new
character_id = 56 # Integer | An EVE character ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  from_id: 789, # Integer | Only show transactions happened before the one referenced by this id
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get wallet transactions
  result = api_instance.get_characters_character_id_wallet_transactions(character_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_transactions: #{e}"
end
```

#### Using the get_characters_character_id_wallet_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCharactersCharacterIdWalletTransactions200Ok>>, Integer, Hash)> get_characters_character_id_wallet_transactions_with_http_info(character_id, opts)

```ruby
begin
  # Get wallet transactions
  data, status_code, headers = api_instance.get_characters_character_id_wallet_transactions_with_http_info(character_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCharactersCharacterIdWalletTransactions200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_characters_character_id_wallet_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **character_id** | **Integer** | An EVE character ID |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **from_id** | **Integer** | Only show transactions happened before the one referenced by this id | [optional] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCharactersCharacterIdWalletTransactions200Ok&gt;**](GetCharactersCharacterIdWalletTransactions200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_wallets

> <Array<GetCorporationsCorporationIdWallets200Ok>> get_corporations_corporation_id_wallets(corporation_id, opts)

Returns a corporation's wallet balance

Get a corporation's wallets  --- Alternate route: `/dev/corporations/{corporation_id}/wallets/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/`  Alternate route: `/v1/corporations/{corporation_id}/wallets/`  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::WalletApi.new
corporation_id = 56 # Integer | An EVE corporation ID
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Returns a corporation's wallet balance
  result = api_instance.get_corporations_corporation_id_wallets(corporation_id, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets: #{e}"
end
```

#### Using the get_corporations_corporation_id_wallets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdWallets200Ok>>, Integer, Hash)> get_corporations_corporation_id_wallets_with_http_info(corporation_id, opts)

```ruby
begin
  # Returns a corporation's wallet balance
  data, status_code, headers = api_instance.get_corporations_corporation_id_wallets_with_http_info(corporation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdWallets200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_with_http_info: #{e}"
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

[**Array&lt;GetCorporationsCorporationIdWallets200Ok&gt;**](GetCorporationsCorporationIdWallets200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_wallets_division_journal

> <Array<GetCorporationsCorporationIdWalletsDivisionJournal200Ok>> get_corporations_corporation_id_wallets_division_journal(corporation_id, division, opts)

Get corporation wallet journal

Retrieve the given corporation's wallet journal for the given division going 30 days back  --- Alternate route: `/dev/corporations/{corporation_id}/wallets/{division}/journal/`  Alternate route: `/v4/corporations/{corporation_id}/wallets/{division}/journal/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::WalletApi.new
corporation_id = 56 # Integer | An EVE corporation ID
division = 56 # Integer | Wallet key of the division to fetch journals from
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 56, # Integer | Which page of results to return
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation wallet journal
  result = api_instance.get_corporations_corporation_id_wallets_division_journal(corporation_id, division, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_journal: #{e}"
end
```

#### Using the get_corporations_corporation_id_wallets_division_journal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdWalletsDivisionJournal200Ok>>, Integer, Hash)> get_corporations_corporation_id_wallets_division_journal_with_http_info(corporation_id, division, opts)

```ruby
begin
  # Get corporation wallet journal
  data, status_code, headers = api_instance.get_corporations_corporation_id_wallets_division_journal_with_http_info(corporation_id, division, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdWalletsDivisionJournal200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_journal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **division** | **Integer** | Wallet key of the division to fetch journals from |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **page** | **Integer** | Which page of results to return | [optional][default to 1] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdWalletsDivisionJournal200Ok&gt;**](GetCorporationsCorporationIdWalletsDivisionJournal200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporations_corporation_id_wallets_division_transactions

> <Array<GetCorporationsCorporationIdWalletsDivisionTransactions200Ok>> get_corporations_corporation_id_wallets_division_transactions(corporation_id, division, opts)

Get corporation wallet transactions

Get wallet transactions of a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/wallets/{division}/transactions/`  Alternate route: `/legacy/corporations/{corporation_id}/wallets/{division}/transactions/`  Alternate route: `/v1/corporations/{corporation_id}/wallets/{division}/transactions/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Accountant, Junior_Accountant 

### Examples

```ruby
require 'time'
require 'ruby_eveesi_client'
# setup authorization
RubyEveesiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RubyEveesiClient::WalletApi.new
corporation_id = 56 # Integer | An EVE corporation ID
division = 56 # Integer | Wallet key of the division to fetch journals from
opts = {
  datasource: 'tranquility', # String | The server name you would like data from
  from_id: 789, # Integer | Only show journal entries happened before the transaction referenced by this id
  if_none_match: 'if_none_match_example', # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: 'token_example' # String | Access token to use if unable to set a header
}

begin
  # Get corporation wallet transactions
  result = api_instance.get_corporations_corporation_id_wallets_division_transactions(corporation_id, division, opts)
  p result
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_transactions: #{e}"
end
```

#### Using the get_corporations_corporation_id_wallets_division_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetCorporationsCorporationIdWalletsDivisionTransactions200Ok>>, Integer, Hash)> get_corporations_corporation_id_wallets_division_transactions_with_http_info(corporation_id, division, opts)

```ruby
begin
  # Get corporation wallet transactions
  data, status_code, headers = api_instance.get_corporations_corporation_id_wallets_division_transactions_with_http_info(corporation_id, division, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetCorporationsCorporationIdWalletsDivisionTransactions200Ok>>
rescue RubyEveesiClient::ApiError => e
  puts "Error when calling WalletApi->get_corporations_corporation_id_wallets_division_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporation_id** | **Integer** | An EVE corporation ID |  |
| **division** | **Integer** | Wallet key of the division to fetch journals from |  |
| **datasource** | **String** | The server name you would like data from | [optional][default to &#39;tranquility&#39;] |
| **from_id** | **Integer** | Only show journal entries happened before the transaction referenced by this id | [optional] |
| **if_none_match** | **String** | ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] |
| **token** | **String** | Access token to use if unable to set a header | [optional] |

### Return type

[**Array&lt;GetCorporationsCorporationIdWalletsDivisionTransactions200Ok&gt;**](GetCorporationsCorporationIdWalletsDivisionTransactions200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

