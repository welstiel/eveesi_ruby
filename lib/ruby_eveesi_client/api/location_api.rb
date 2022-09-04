=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

The version of the OpenAPI document: 1.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module RubyEveesiClient
  class LocationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get character location
    # Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable  --- Alternate route: `/dev/characters/{character_id}/location/`  Alternate route: `/legacy/characters/{character_id}/location/`  Alternate route: `/v1/characters/{character_id}/location/`  Alternate route: `/v2/characters/{character_id}/location/`  --- This route is cached for up to 5 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [GetCharactersCharacterIdLocationOk]
    def get_characters_character_id_location(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_location_with_http_info(character_id, opts)
      data
    end

    # Get character location
    # Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable  --- Alternate route: &#x60;/dev/characters/{character_id}/location/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/location/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/location/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/location/&#x60;  --- This route is cached for up to 5 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(GetCharactersCharacterIdLocationOk, Integer, Hash)>] GetCharactersCharacterIdLocationOk data, response status code and response headers
    def get_characters_character_id_location_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.get_characters_character_id_location ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling LocationApi.get_characters_character_id_location"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling LocationApi.get_characters_character_id_location, must be greater than or equal to 1.'
      end

      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/characters/{character_id}/location/'.sub('{' + 'character_id' + '}', CGI.escape(character_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

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
      return_type = opts[:debug_return_type] || 'GetCharactersCharacterIdLocationOk'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['evesso']

      new_options = opts.merge(
        :operation => :"LocationApi.get_characters_character_id_location",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#get_characters_character_id_location\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get character online
    # Checks if the character is currently online  --- Alternate route: `/dev/characters/{character_id}/online/`  Alternate route: `/v2/characters/{character_id}/online/`  Alternate route: `/v3/characters/{character_id}/online/`  --- This route is cached for up to 60 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [GetCharactersCharacterIdOnlineOk]
    def get_characters_character_id_online(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_online_with_http_info(character_id, opts)
      data
    end

    # Get character online
    # Checks if the character is currently online  --- Alternate route: &#x60;/dev/characters/{character_id}/online/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/online/&#x60;  Alternate route: &#x60;/v3/characters/{character_id}/online/&#x60;  --- This route is cached for up to 60 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(GetCharactersCharacterIdOnlineOk, Integer, Hash)>] GetCharactersCharacterIdOnlineOk data, response status code and response headers
    def get_characters_character_id_online_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.get_characters_character_id_online ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling LocationApi.get_characters_character_id_online"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling LocationApi.get_characters_character_id_online, must be greater than or equal to 1.'
      end

      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/characters/{character_id}/online/'.sub('{' + 'character_id' + '}', CGI.escape(character_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

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
      return_type = opts[:debug_return_type] || 'GetCharactersCharacterIdOnlineOk'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['evesso']

      new_options = opts.merge(
        :operation => :"LocationApi.get_characters_character_id_online",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#get_characters_character_id_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get current ship
    # Get the current ship type, name and id  --- Alternate route: `/dev/characters/{character_id}/ship/`  Alternate route: `/legacy/characters/{character_id}/ship/`  Alternate route: `/v1/characters/{character_id}/ship/`  Alternate route: `/v2/characters/{character_id}/ship/`  --- This route is cached for up to 5 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [GetCharactersCharacterIdShipOk]
    def get_characters_character_id_ship(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_ship_with_http_info(character_id, opts)
      data
    end

    # Get current ship
    # Get the current ship type, name and id  --- Alternate route: &#x60;/dev/characters/{character_id}/ship/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/ship/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/ship/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/ship/&#x60;  --- This route is cached for up to 5 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(GetCharactersCharacterIdShipOk, Integer, Hash)>] GetCharactersCharacterIdShipOk data, response status code and response headers
    def get_characters_character_id_ship_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationApi.get_characters_character_id_ship ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling LocationApi.get_characters_character_id_ship"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling LocationApi.get_characters_character_id_ship, must be greater than or equal to 1.'
      end

      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/characters/{character_id}/ship/'.sub('{' + 'character_id' + '}', CGI.escape(character_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'token'] = opts[:'token'] if !opts[:'token'].nil?

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
      return_type = opts[:debug_return_type] || 'GetCharactersCharacterIdShipOk'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['evesso']

      new_options = opts.merge(
        :operation => :"LocationApi.get_characters_character_id_ship",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationApi#get_characters_character_id_ship\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
