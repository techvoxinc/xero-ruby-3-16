=begin
#Xero AppStore API

#These endpoints are for Xero Partners to interact with the App Store Billing platform

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version test test12: 4.3.1

=end

module XeroRuby
  class AppStoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.new)
      @api_client = api_client
    end
    # Retrieves a subscription for a given subscriptionId
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param [Hash] opts the optional parameters
    # @return [Subscription]
    def get_subscription(subscription_id, opts = {})
      data, _status_code, _headers = get_subscription_with_http_info(subscription_id, opts)
      data
    end

    # Retrieves a subscription for a given subscriptionId
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param [Hash] opts the optional parameters
    # @return [Array<(Subscription, Integer, Hash)>] Subscription data, response status code and response headers
    def get_subscription_with_http_info(subscription_id, options = {})
      opts = options.dup
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppStoreApi.get_subscription ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling AppStoreApi.get_subscription"
      end
      # resource path
      local_var_path = '/subscriptions/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', subscription_id.to_s)

      # camelize keys of incoming `where` opts
      opts[:'where'] = @api_client.parameterize_where(opts[:'where']) if !opts[:'where'].nil?

      # query parameters
      query_params = opts[:query_params] || {}
      
      # XeroAPI's `IDs` convention openapi-generator does not snake_case properly.. manual over-riding `i_ds` malformations:
      query_params[:'IDs'] = @api_client.build_collection_param(opts[:'ids'], :csv) if !opts[:'ids'].nil?
      query_params[:'ContactIDs'] = @api_client.build_collection_param(opts[:'contact_ids'], :csv) if !opts[:'contact_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Subscription' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, "AppStoreApi", new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppStoreApi#get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets all usage records related to the subscription
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param [Hash] opts the optional parameters
    # @return [UsageRecordsList]
    def get_usage_records(subscription_id, opts = {})
      data, _status_code, _headers = get_usage_records_with_http_info(subscription_id, opts)
      data
    end

    # Gets all usage records related to the subscription
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsageRecordsList, Integer, Hash)>] UsageRecordsList data, response status code and response headers
    def get_usage_records_with_http_info(subscription_id, options = {})
      opts = options.dup
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppStoreApi.get_usage_records ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling AppStoreApi.get_usage_records"
      end
      # resource path
      local_var_path = '/subscriptions/{subscriptionId}/usage-records'.sub('{' + 'subscriptionId' + '}', subscription_id.to_s)

      # camelize keys of incoming `where` opts
      opts[:'where'] = @api_client.parameterize_where(opts[:'where']) if !opts[:'where'].nil?

      # query parameters
      query_params = opts[:query_params] || {}
      
      # XeroAPI's `IDs` convention openapi-generator does not snake_case properly.. manual over-riding `i_ds` malformations:
      query_params[:'IDs'] = @api_client.build_collection_param(opts[:'ids'], :csv) if !opts[:'ids'].nil?
      query_params[:'ContactIDs'] = @api_client.build_collection_param(opts[:'contact_ids'], :csv) if !opts[:'contact_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'UsageRecordsList' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, "AppStoreApi", new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppStoreApi#get_usage_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send metered usage belonging to this subscription and subscription item
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param subscription_item_id [String] The unique identifier of the subscriptionItem
    # @param create_usage_record [CreateUsageRecord] Contains the quantity for the usage record to create
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key This allows you to safely retry requests without the risk of duplicate processing. 128 character max.
    # @return [UsageRecord]
    def post_usage_records(subscription_id, subscription_item_id, create_usage_record, opts = {})
      data, _status_code, _headers = post_usage_records_with_http_info(subscription_id, subscription_item_id, create_usage_record, opts)
      data
    end

    # Send metered usage belonging to this subscription and subscription item
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param subscription_item_id [String] The unique identifier of the subscriptionItem
    # @param create_usage_record [CreateUsageRecord] Contains the quantity for the usage record to create
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key This allows you to safely retry requests without the risk of duplicate processing. 128 character max.
    # @return [Array<(UsageRecord, Integer, Hash)>] UsageRecord data, response status code and response headers
    def post_usage_records_with_http_info(subscription_id, subscription_item_id, create_usage_record, options = {})
      opts = options.dup
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppStoreApi.post_usage_records ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling AppStoreApi.post_usage_records"
      end
      # verify the required parameter 'subscription_item_id' is set
      if @api_client.config.client_side_validation && subscription_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_item_id' when calling AppStoreApi.post_usage_records"
      end
      # verify the required parameter 'create_usage_record' is set
      if @api_client.config.client_side_validation && create_usage_record.nil?
        fail ArgumentError, "Missing the required parameter 'create_usage_record' when calling AppStoreApi.post_usage_records"
      end
      # resource path
      local_var_path = '/subscriptions/{subscriptionId}/items/{subscriptionItemId}/usage-records'.sub('{' + 'subscriptionId' + '}', subscription_id.to_s).sub('{' + 'subscriptionItemId' + '}', subscription_item_id.to_s)

      # camelize keys of incoming `where` opts
      opts[:'where'] = @api_client.parameterize_where(opts[:'where']) if !opts[:'where'].nil?

      # query parameters
      query_params = opts[:query_params] || {}
      
      # XeroAPI's `IDs` convention openapi-generator does not snake_case properly.. manual over-riding `i_ds` malformations:
      query_params[:'IDs'] = @api_client.build_collection_param(opts[:'ids'], :csv) if !opts[:'ids'].nil?
      query_params[:'ContactIDs'] = @api_client.build_collection_param(opts[:'contact_ids'], :csv) if !opts[:'contact_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_usage_record) 

      # return_type
      return_type = opts[:return_type] || 'UsageRecord' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, "AppStoreApi", new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppStoreApi#post_usage_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update and existing metered usage belonging to this subscription and subscription item
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param subscription_item_id [String] The unique identifier of the subscriptionItem
    # @param usage_record_id [String] The unique identifier of the usage record
    # @param update_usage_record [UpdateUsageRecord] Contains the quantity for the usage record to update
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key This allows you to safely retry requests without the risk of duplicate processing. 128 character max.
    # @return [UsageRecord]
    def put_usage_records(subscription_id, subscription_item_id, usage_record_id, update_usage_record, opts = {})
      data, _status_code, _headers = put_usage_records_with_http_info(subscription_id, subscription_item_id, usage_record_id, update_usage_record, opts)
      data
    end

    # Update and existing metered usage belonging to this subscription and subscription item
    # @param subscription_id [String] Unique identifier for Subscription object
    # @param subscription_item_id [String] The unique identifier of the subscriptionItem
    # @param usage_record_id [String] The unique identifier of the usage record
    # @param update_usage_record [UpdateUsageRecord] Contains the quantity for the usage record to update
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key This allows you to safely retry requests without the risk of duplicate processing. 128 character max.
    # @return [Array<(UsageRecord, Integer, Hash)>] UsageRecord data, response status code and response headers
    def put_usage_records_with_http_info(subscription_id, subscription_item_id, usage_record_id, update_usage_record, options = {})
      opts = options.dup
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppStoreApi.put_usage_records ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling AppStoreApi.put_usage_records"
      end
      # verify the required parameter 'subscription_item_id' is set
      if @api_client.config.client_side_validation && subscription_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_item_id' when calling AppStoreApi.put_usage_records"
      end
      # verify the required parameter 'usage_record_id' is set
      if @api_client.config.client_side_validation && usage_record_id.nil?
        fail ArgumentError, "Missing the required parameter 'usage_record_id' when calling AppStoreApi.put_usage_records"
      end
      # verify the required parameter 'update_usage_record' is set
      if @api_client.config.client_side_validation && update_usage_record.nil?
        fail ArgumentError, "Missing the required parameter 'update_usage_record' when calling AppStoreApi.put_usage_records"
      end
      # resource path
      local_var_path = '/subscriptions/{subscriptionId}/items/{subscriptionItemId}/usage-records/{usageRecordId}'.sub('{' + 'subscriptionId' + '}', subscription_id.to_s).sub('{' + 'subscriptionItemId' + '}', subscription_item_id.to_s).sub('{' + 'usageRecordId' + '}', usage_record_id.to_s)

      # camelize keys of incoming `where` opts
      opts[:'where'] = @api_client.parameterize_where(opts[:'where']) if !opts[:'where'].nil?

      # query parameters
      query_params = opts[:query_params] || {}
      
      # XeroAPI's `IDs` convention openapi-generator does not snake_case properly.. manual over-riding `i_ds` malformations:
      query_params[:'IDs'] = @api_client.build_collection_param(opts[:'ids'], :csv) if !opts[:'ids'].nil?
      query_params[:'ContactIDs'] = @api_client.build_collection_param(opts[:'contact_ids'], :csv) if !opts[:'contact_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(update_usage_record) 

      # return_type
      return_type = opts[:return_type] || 'UsageRecord' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, "AppStoreApi", new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppStoreApi#put_usage_records\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
