=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

The version of the OpenAPI document: 1.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module RubyEveesiClient
  class DogmaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get attributes
    # Get a list of dogma attribute ids  --- Alternate route: `/dev/dogma/attributes/`  Alternate route: `/legacy/dogma/attributes/`  Alternate route: `/v1/dogma/attributes/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<Integer>]
    def get_dogma_attributes(opts = {})
      data, _status_code, _headers = get_dogma_attributes_with_http_info(opts)
      data
    end

    # Get attributes
    # Get a list of dogma attribute ids  --- Alternate route: &#x60;/dev/dogma/attributes/&#x60;  Alternate route: &#x60;/legacy/dogma/attributes/&#x60;  Alternate route: &#x60;/v1/dogma/attributes/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<Integer>, Integer, Hash)>] Array<Integer> data, response status code and response headers
    def get_dogma_attributes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DogmaApi.get_dogma_attributes ...'
      end
      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/dogma/attributes/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Integer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DogmaApi.get_dogma_attributes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get attribute information
    # Get information on a dogma attribute  --- Alternate route: `/dev/dogma/attributes/{attribute_id}/`  Alternate route: `/legacy/dogma/attributes/{attribute_id}/`  Alternate route: `/v1/dogma/attributes/{attribute_id}/`  --- This route expires daily at 11:05
    # @param attribute_id [Integer] A dogma attribute ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [GetDogmaAttributesAttributeIdOk]
    def get_dogma_attributes_attribute_id(attribute_id, opts = {})
      data, _status_code, _headers = get_dogma_attributes_attribute_id_with_http_info(attribute_id, opts)
      data
    end

    # Get attribute information
    # Get information on a dogma attribute  --- Alternate route: &#x60;/dev/dogma/attributes/{attribute_id}/&#x60;  Alternate route: &#x60;/legacy/dogma/attributes/{attribute_id}/&#x60;  Alternate route: &#x60;/v1/dogma/attributes/{attribute_id}/&#x60;  --- This route expires daily at 11:05
    # @param attribute_id [Integer] A dogma attribute ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(GetDogmaAttributesAttributeIdOk, Integer, Hash)>] GetDogmaAttributesAttributeIdOk data, response status code and response headers
    def get_dogma_attributes_attribute_id_with_http_info(attribute_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DogmaApi.get_dogma_attributes_attribute_id ...'
      end
      # verify the required parameter 'attribute_id' is set
      if @api_client.config.client_side_validation && attribute_id.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_id' when calling DogmaApi.get_dogma_attributes_attribute_id"
      end
      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/dogma/attributes/{attribute_id}/'.sub('{' + 'attribute_id' + '}', CGI.escape(attribute_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDogmaAttributesAttributeIdOk'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DogmaApi.get_dogma_attributes_attribute_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_attributes_attribute_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get dynamic item information
    # Returns info about a dynamic item resulting from mutation with a mutaplasmid.  --- Alternate route: `/dev/dogma/dynamic/items/{type_id}/{item_id}/`  Alternate route: `/legacy/dogma/dynamic/items/{type_id}/{item_id}/`  Alternate route: `/v1/dogma/dynamic/items/{type_id}/{item_id}/`  --- This route expires daily at 11:05
    # @param item_id [Integer] item_id integer
    # @param type_id [Integer] type_id integer
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [GetDogmaDynamicItemsTypeIdItemIdOk]
    def get_dogma_dynamic_items_type_id_item_id(item_id, type_id, opts = {})
      data, _status_code, _headers = get_dogma_dynamic_items_type_id_item_id_with_http_info(item_id, type_id, opts)
      data
    end

    # Get dynamic item information
    # Returns info about a dynamic item resulting from mutation with a mutaplasmid.  --- Alternate route: &#x60;/dev/dogma/dynamic/items/{type_id}/{item_id}/&#x60;  Alternate route: &#x60;/legacy/dogma/dynamic/items/{type_id}/{item_id}/&#x60;  Alternate route: &#x60;/v1/dogma/dynamic/items/{type_id}/{item_id}/&#x60;  --- This route expires daily at 11:05
    # @param item_id [Integer] item_id integer
    # @param type_id [Integer] type_id integer
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(GetDogmaDynamicItemsTypeIdItemIdOk, Integer, Hash)>] GetDogmaDynamicItemsTypeIdItemIdOk data, response status code and response headers
    def get_dogma_dynamic_items_type_id_item_id_with_http_info(item_id, type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DogmaApi.get_dogma_dynamic_items_type_id_item_id ...'
      end
      # verify the required parameter 'item_id' is set
      if @api_client.config.client_side_validation && item_id.nil?
        fail ArgumentError, "Missing the required parameter 'item_id' when calling DogmaApi.get_dogma_dynamic_items_type_id_item_id"
      end
      # verify the required parameter 'type_id' is set
      if @api_client.config.client_side_validation && type_id.nil?
        fail ArgumentError, "Missing the required parameter 'type_id' when calling DogmaApi.get_dogma_dynamic_items_type_id_item_id"
      end
      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/dogma/dynamic/items/{type_id}/{item_id}/'.sub('{' + 'item_id' + '}', CGI.escape(item_id.to_s)).sub('{' + 'type_id' + '}', CGI.escape(type_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDogmaDynamicItemsTypeIdItemIdOk'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DogmaApi.get_dogma_dynamic_items_type_id_item_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_dynamic_items_type_id_item_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get effects
    # Get a list of dogma effect ids  --- Alternate route: `/dev/dogma/effects/`  Alternate route: `/legacy/dogma/effects/`  Alternate route: `/v1/dogma/effects/`  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<Integer>]
    def get_dogma_effects(opts = {})
      data, _status_code, _headers = get_dogma_effects_with_http_info(opts)
      data
    end

    # Get effects
    # Get a list of dogma effect ids  --- Alternate route: &#x60;/dev/dogma/effects/&#x60;  Alternate route: &#x60;/legacy/dogma/effects/&#x60;  Alternate route: &#x60;/v1/dogma/effects/&#x60;  --- This route expires daily at 11:05
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<Integer>, Integer, Hash)>] Array<Integer> data, response status code and response headers
    def get_dogma_effects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DogmaApi.get_dogma_effects ...'
      end
      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/dogma/effects/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Integer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DogmaApi.get_dogma_effects",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_effects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get effect information
    # Get information on a dogma effect  --- Alternate route: `/dev/dogma/effects/{effect_id}/`  Alternate route: `/v2/dogma/effects/{effect_id}/`  --- This route expires daily at 11:05
    # @param effect_id [Integer] A dogma effect ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [GetDogmaEffectsEffectIdOk]
    def get_dogma_effects_effect_id(effect_id, opts = {})
      data, _status_code, _headers = get_dogma_effects_effect_id_with_http_info(effect_id, opts)
      data
    end

    # Get effect information
    # Get information on a dogma effect  --- Alternate route: &#x60;/dev/dogma/effects/{effect_id}/&#x60;  Alternate route: &#x60;/v2/dogma/effects/{effect_id}/&#x60;  --- This route expires daily at 11:05
    # @param effect_id [Integer] A dogma effect ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(GetDogmaEffectsEffectIdOk, Integer, Hash)>] GetDogmaEffectsEffectIdOk data, response status code and response headers
    def get_dogma_effects_effect_id_with_http_info(effect_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DogmaApi.get_dogma_effects_effect_id ...'
      end
      # verify the required parameter 'effect_id' is set
      if @api_client.config.client_side_validation && effect_id.nil?
        fail ArgumentError, "Missing the required parameter 'effect_id' when calling DogmaApi.get_dogma_effects_effect_id"
      end
      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/dogma/effects/{effect_id}/'.sub('{' + 'effect_id' + '}', CGI.escape(effect_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDogmaEffectsEffectIdOk'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DogmaApi.get_dogma_effects_effect_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_effects_effect_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
