=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

The version of the OpenAPI document: 1.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module RubyEveesiClient
  class ClonesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get clones
    # A list of the character's clones  --- Alternate route: `/dev/characters/{character_id}/clones/`  Alternate route: `/v3/characters/{character_id}/clones/`  Alternate route: `/v4/characters/{character_id}/clones/`  --- This route is cached for up to 120 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [GetCharactersCharacterIdClonesOk]
    def get_characters_character_id_clones(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_clones_with_http_info(character_id, opts)
      data
    end

    # Get clones
    # A list of the character&#39;s clones  --- Alternate route: &#x60;/dev/characters/{character_id}/clones/&#x60;  Alternate route: &#x60;/v3/characters/{character_id}/clones/&#x60;  Alternate route: &#x60;/v4/characters/{character_id}/clones/&#x60;  --- This route is cached for up to 120 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(GetCharactersCharacterIdClonesOk, Integer, Hash)>] GetCharactersCharacterIdClonesOk data, response status code and response headers
    def get_characters_character_id_clones_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClonesApi.get_characters_character_id_clones ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling ClonesApi.get_characters_character_id_clones"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling ClonesApi.get_characters_character_id_clones, must be greater than or equal to 1.'
      end

      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/characters/{character_id}/clones/'.sub('{' + 'character_id' + '}', CGI.escape(character_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetCharactersCharacterIdClonesOk'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['evesso']

      new_options = opts.merge(
        :operation => :"ClonesApi.get_characters_character_id_clones",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClonesApi#get_characters_character_id_clones\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get active implants
    # Return implants on the active clone of a character  --- Alternate route: `/dev/characters/{character_id}/implants/`  Alternate route: `/legacy/characters/{character_id}/implants/`  Alternate route: `/v1/characters/{character_id}/implants/`  Alternate route: `/v2/characters/{character_id}/implants/`  --- This route is cached for up to 120 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<Integer>]
    def get_characters_character_id_implants(character_id, opts = {})
      data, _status_code, _headers = get_characters_character_id_implants_with_http_info(character_id, opts)
      data
    end

    # Get active implants
    # Return implants on the active clone of a character  --- Alternate route: &#x60;/dev/characters/{character_id}/implants/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/implants/&#x60;  Alternate route: &#x60;/v1/characters/{character_id}/implants/&#x60;  Alternate route: &#x60;/v2/characters/{character_id}/implants/&#x60;  --- This route is cached for up to 120 seconds
    # @param character_id [Integer] An EVE character ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to 'tranquility')
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @option opts [String] :token Access token to use if unable to set a header
    # @return [Array<(Array<Integer>, Integer, Hash)>] Array<Integer> data, response status code and response headers
    def get_characters_character_id_implants_with_http_info(character_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClonesApi.get_characters_character_id_implants ...'
      end
      # verify the required parameter 'character_id' is set
      if @api_client.config.client_side_validation && character_id.nil?
        fail ArgumentError, "Missing the required parameter 'character_id' when calling ClonesApi.get_characters_character_id_implants"
      end
      if @api_client.config.client_side_validation && character_id < 1
        fail ArgumentError, 'invalid value for "character_id" when calling ClonesApi.get_characters_character_id_implants, must be greater than or equal to 1.'
      end

      allowable_values = ["tranquility"]
      if @api_client.config.client_side_validation && opts[:'datasource'] && !allowable_values.include?(opts[:'datasource'])
        fail ArgumentError, "invalid value for \"datasource\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/characters/{character_id}/implants/'.sub('{' + 'character_id' + '}', CGI.escape(character_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Integer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['evesso']

      new_options = opts.merge(
        :operation => :"ClonesApi.get_characters_character_id_implants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClonesApi#get_characters_character_id_implants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
