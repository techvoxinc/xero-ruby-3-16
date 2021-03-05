# XeroRuby::Identity::TokenSet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | Xero identifier | [optional] 
**id_token** | **String** | Xero identifier of organisation | [optional] 
**expires_in** | **String** | Identifier shared across connections authorised at the same time | [optional] 
**token_type** | **String** | Xero tenant type (i.e. ORGANISATION, PRACTICE) | [optional] 
**refresh_token** | **String** | Xero tenant name | [optional] 

## Code Sample

```ruby
require 'XeroRuby::Identity'

instance = XeroRuby::Identity::TokenSet.new(access_token: null,
                                 id_token: null,
                                 expires_in: null,
                                 token_type: null,
                                 refresh_token: null)
```


