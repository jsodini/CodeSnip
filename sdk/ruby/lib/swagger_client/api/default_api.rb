=begin
CodeSnip REST API

Development Pastebin with a twist.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module SwaggerClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a code snippet.
    # Creates a code snippet in the specified language.
    # @param [Hash] opts the optional parameters
    # @option opts [CodeSnippet] :code_snippet_body Code snippet object.
    # @return [nil]
    def snip_post(opts = {})
      snip_post_with_http_info(opts)
      return nil
    end

    # Creates a code snippet.
    # Creates a code snippet in the specified language.
    # @param [Hash] opts the optional parameters
    # @option opts [CodeSnippet] :code_snippet_body Code snippet object.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def snip_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi#snip_post ..."
      end
      
      # resource path
      local_var_path = "/snip".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'code_snippet_body'])
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#snip_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves the specified code snippet.
    # Retrieves the specified code snippet.
    # @param code_snippet_uuid Code snippet unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [CodeSnippet]
    def snip_code_snippet_uuid_get(code_snippet_uuid, opts = {})
      data, status_code, headers = snip_code_snippet_uuid_get_with_http_info(code_snippet_uuid, opts)
      return data
    end

    # Retrieves the specified code snippet.
    # Retrieves the specified code snippet.
    # @param code_snippet_uuid Code snippet unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CodeSnippet, Fixnum, Hash)>] CodeSnippet data, response status code and response headers
    def snip_code_snippet_uuid_get_with_http_info(code_snippet_uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi#snip_code_snippet_uuid_get ..."
      end
      
      # verify the required parameter 'code_snippet_uuid' is set
      fail "Missing the required parameter 'code_snippet_uuid' when calling snip_code_snippet_uuid_get" if code_snippet_uuid.nil?
      
      # resource path
      local_var_path = "/snip/{code_snippet_uuid}".sub('{format}','json').sub('{' + 'code_snippet_uuid' + '}', code_snippet_uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CodeSnippet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#snip_code_snippet_uuid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a code snippet.
    # Updates a code snippet changes.
    # @param code_snippet_uuid Code snippet unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [CodeSnippet] :code_snippet_body Code snippet object.
    # @return [nil]
    def snip_code_snippet_uuid_put(code_snippet_uuid, opts = {})
      snip_code_snippet_uuid_put_with_http_info(code_snippet_uuid, opts)
      return nil
    end

    # Updates a code snippet.
    # Updates a code snippet changes.
    # @param code_snippet_uuid Code snippet unique identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [CodeSnippet] :code_snippet_body Code snippet object.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def snip_code_snippet_uuid_put_with_http_info(code_snippet_uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi#snip_code_snippet_uuid_put ..."
      end
      
      # verify the required parameter 'code_snippet_uuid' is set
      fail "Missing the required parameter 'code_snippet_uuid' when calling snip_code_snippet_uuid_put" if code_snippet_uuid.nil?
      
      # resource path
      local_var_path = "/snip/{code_snippet_uuid}".sub('{format}','json').sub('{' + 'code_snippet_uuid' + '}', code_snippet_uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'code_snippet_body'])
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#snip_code_snippet_uuid_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the specified code snippet.
    # Deletes the specified code snippet.
    # @param code_snippet_uuid Code snippet unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def snip_code_snippet_uuid_delete(code_snippet_uuid, opts = {})
      snip_code_snippet_uuid_delete_with_http_info(code_snippet_uuid, opts)
      return nil
    end

    # Deletes the specified code snippet.
    # Deletes the specified code snippet.
    # @param code_snippet_uuid Code snippet unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def snip_code_snippet_uuid_delete_with_http_info(code_snippet_uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi#snip_code_snippet_uuid_delete ..."
      end
      
      # verify the required parameter 'code_snippet_uuid' is set
      fail "Missing the required parameter 'code_snippet_uuid' when calling snip_code_snippet_uuid_delete" if code_snippet_uuid.nil?
      
      # resource path
      local_var_path = "/snip/{code_snippet_uuid}".sub('{format}','json').sub('{' + 'code_snippet_uuid' + '}', code_snippet_uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#snip_code_snippet_uuid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves all code snippets.
    # 
    # @param [Hash] opts the optional parameters
    # @return [CodeSnippetList]
    def snips_get(opts = {})
      data, status_code, headers = snips_get_with_http_info(opts)
      return data
    end

    # Retrieves all code snippets.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CodeSnippetList, Fixnum, Hash)>] CodeSnippetList data, response status code and response headers
    def snips_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi#snips_get ..."
      end
      
      # resource path
      local_var_path = "/snips".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CodeSnippetList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#snips_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
