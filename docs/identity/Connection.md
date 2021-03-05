# XeroRuby::Identity::Connection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Xero identifier | [optional] 
**tenant_id** | **String** | Xero identifier of organisation | [optional] 
**auth_event_id** | **String** | Identifier shared across connections authorised at the same time | [optional] 
**tenant_type** | **String** | Xero tenant type (i.e. ORGANISATION, PRACTICE) | [optional] 
**tenant_name** | **String** | Xero tenant name | [optional] 
**created_date_utc** | **DateTime** | The date when the user connected this tenant to your app | [optional] 
**updated_date_utc** | **DateTime** | The date when the user most recently connected this tenant to your app. May differ to the created date if the user has disconnected and subsequently reconnected this tenant to your app. | [optional] 

## Code Sample

```ruby
require 'XeroRuby::Identity'

instance = XeroRuby::Identity::Connection.new(id: null,
                                 tenant_id: null,
                                 auth_event_id: null,
                                 tenant_type: null,
                                 tenant_name: null,
                                 created_date_utc: null,
                                 updated_date_utc: null)
```


