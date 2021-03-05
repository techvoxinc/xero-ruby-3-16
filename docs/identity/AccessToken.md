# XeroRuby::Identity::AccessToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id_token** | **String** | Xero unique identifier | [optional] 
**access_token** | **String** | access token provided during authentication flow | [optional] 
**expires_in** | **Float** | time in milliseconds until access token expires. | [optional] 
**token_type** | **String** | type of token i.e. Bearer | [optional] 
**refresh_token** | **String** | token used to refresh an expired access token | [optional] 

## Code Sample

```ruby
require 'XeroRuby::Identity'

instance = XeroRuby::Identity::AccessToken.new(id_token: null,
                                 access_token: null,
                                 expires_in: null,
                                 token_type: null,
                                 refresh_token: null)
```


