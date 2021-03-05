# XeroRuby::Identity::RefreshToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **String** | Xero grant type | [optional] 
**refresh_token** | **String** | refresh token provided during authentication flow | [optional] 
**client_id** | **String** | client id for Xero app | [optional] 
**client_secret** | **String** | client secret for Xero app 2 | [optional] 

## Code Sample

```ruby
require 'XeroRuby::Identity'

instance = XeroRuby::Identity::RefreshToken.new(grant_type: null,
                                 refresh_token: null,
                                 client_id: null,
                                 client_secret: null)
```


