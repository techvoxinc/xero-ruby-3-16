# XeroRuby::Identity::IdentityApi

All URIs are relative to *https://api.xero.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_connection**](IdentityApi.md#delete_connection) | **DELETE** /Connections/{id} | Deletes a connection for this user (i.e. disconnect a tenant)
[**exchange_code**](IdentityApi.md#exchange_code) | **POST** /connect/token | The request body will need to contain the grant type (authorization_code), code and redirect_uri
[**get_connections**](IdentityApi.md#get_connections) | **GET** /Connections | Retrieves the connections for this user



## delete_connection

> delete_connection(id)

Deletes a connection for this user (i.e. disconnect a tenant)

Override the base server url that include version

### Example

```ruby
# load the gem
require 'xero-ruby'

creds = {
  client_id: ENV['CLIENT_ID'],
  client_secret: ENV['CLIENT_SECRET'],
  redirect_uri: ENV['REDIRECT_URI'],
  scopes: ENV['SCOPES']
}
xero_client = XeroRuby::ApiClient.new(credentials: creds)

token_set = fetch_valid_token_set(user) # example

xero_client.refresh_token_set(token_set)

# You need to namespace your api method call to one of the following api sets
# [:accounting_api, :assets_api, :projects_api, :files_api, :payroll_au_api, :payroll_nz_api, :payroll_uk_api]

api_instance = xero_client.<api_set>



id = 'id_example' # String | Unique identifier for retrieving single object
begin
  #Deletes a connection for this user (i.e. disconnect a tenant)
  api_instance.delete_connection(id)
rescue XeroRuby::Identity::ApiError => e
  puts "Exception when calling IdentityApi->delete_connection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| Unique identifier for retrieving single object | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## exchange_code

> Array&lt;Connection&gt; exchange_code(grant_type, code, redirect_uri)

The request body will need to contain the grant type (authorization_code), code and redirect_uri

Exchange auth_code for a token_set

### Example

```ruby
# load the gem
require 'xero-ruby'

creds = {
  client_id: ENV['CLIENT_ID'],
  client_secret: ENV['CLIENT_SECRET'],
  redirect_uri: ENV['REDIRECT_URI'],
  scopes: ENV['SCOPES']
}
xero_client = XeroRuby::ApiClient.new(credentials: creds)

token_set = fetch_valid_token_set(user) # example

xero_client.refresh_token_set(token_set)

# You need to namespace your api method call to one of the following api sets
# [:accounting_api, :assets_api, :projects_api, :files_api, :payroll_au_api, :payroll_nz_api, :payroll_uk_api]

api_instance = xero_client.<api_set>



grant_type = 'grant_type_example' # String | The OAuth2.0 grant_type
code = 'code_example' # String | The temporary exchange code
redirect_uri = 'redirect_uri_example' # String | The OAuth2.0 redirect_uri
begin
  #The request body will need to contain the grant type (authorization_code), code and redirect_uri
  result = api_instance.exchange_code(grant_type, code, redirect_uri)
  p result
rescue XeroRuby::Identity::ApiError => e
  puts "Exception when calling IdentityApi->exchange_code: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| The OAuth2.0 grant_type | 
 **code** | **String**| The temporary exchange code | 
 **redirect_uri** | **String**| The OAuth2.0 redirect_uri | 

### Return type

[**Array&lt;Connection&gt;**](Connection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connections

> Array&lt;Connection&gt; get_connections(opts)

Retrieves the connections for this user

Override the base server url that include version

### Example

```ruby
# load the gem
require 'xero-ruby'

creds = {
  client_id: ENV['CLIENT_ID'],
  client_secret: ENV['CLIENT_SECRET'],
  redirect_uri: ENV['REDIRECT_URI'],
  scopes: ENV['SCOPES']
}
xero_client = XeroRuby::ApiClient.new(credentials: creds)

token_set = fetch_valid_token_set(user) # example

xero_client.refresh_token_set(token_set)

# You need to namespace your api method call to one of the following api sets
# [:accounting_api, :assets_api, :projects_api, :files_api, :payroll_au_api, :payroll_nz_api, :payroll_uk_api]

api_instance = xero_client.<api_set>



opts = {
  auth_event_id: '00000000-0000-0000-0000-000000000000' # String | Filter by authEventId
}

begin
  #Retrieves the connections for this user
  result = api_instance.get_connections(opts)
  p result
rescue XeroRuby::Identity::ApiError => e
  puts "Exception when calling IdentityApi->get_connections: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_event_id** | [**String**](.md)| Filter by authEventId | [optional] 

### Return type

[**Array&lt;Connection&gt;**](Connection.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

