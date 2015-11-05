require "uri"

module SwaggerClient
  class MeasurementApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Measurements
    # Get all Measurements
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id user_id
    # @option opts [String] :client_id client_id
    # @option opts [Integer] :connector_id connector_id
    # @option opts [Integer] :variable_id variable_id
    # @option opts [Integer] :start_time start_time
    # @option opts [Float] :value value
    # @option opts [Float] :original_value original_value
    # @option opts [Integer] :duration duration
    # @option opts [String] :note note
    # @option opts [Float] :latitude latitude
    # @option opts [Float] :longitude longitude
    # @option opts [String] :location location
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [String] :error error
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_11]
    def measurements_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_get ..."
      end
      
      # resource path
      path = "/measurements".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
      query_params[:'start_time'] = opts[:'start_time'] if opts[:'start_time']
      query_params[:'value'] = opts[:'value'] if opts[:'value']
      query_params[:'original_value'] = opts[:'original_value'] if opts[:'original_value']
      query_params[:'duration'] = opts[:'duration'] if opts[:'duration']
      query_params[:'note'] = opts[:'note'] if opts[:'note']
      query_params[:'latitude'] = opts[:'latitude'] if opts[:'latitude']
      query_params[:'longitude'] = opts[:'longitude'] if opts[:'longitude']
      query_params[:'location'] = opts[:'location'] if opts[:'location']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'error'] = opts[:'error'] if opts[:'error']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']

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
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_11')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Measurement
    # Store Measurement
    # @param [Hash] opts the optional parameters
    # @option opts [MeasurementPost] :body Measurement that should be stored
    # @return [inline_response_200_11]
    def measurements_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_post ..."
      end
      
      # resource path
      path = "/measurements".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_11')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Measurements CSV
    # Download a CSV containing all user measurements
    # @param [Hash] opts the optional parameters
    # @return [File]
    def measurements_csv_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_csv_get ..."
      end
      
      # resource path
      path = "/measurements/csv".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/csv']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_csv_get. Result: #{result.inspect}"
      end
      return result
    end

    # Post Request for Measurements CSV
    # Use this endpoint to schedule a CSV export containing all user measurements to be emailed to the user within 24 hours.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def measurements_request_csv_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_request_csv_post ..."
      end
      
      # resource path
      path = "/measurements/request_csv".sub('{format}','json')

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
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_request_csv_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Measurement
    # Get Measurement
    # @param id id of Measurement
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_12]
    def measurements_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling measurements_id_get" if id.nil?
      
      # resource path
      path = "/measurements/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_12')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Measurement
    # Update Measurement
    # @param id id of Measurement
    # @param [Hash] opts the optional parameters
    # @option opts [Measurement] :body Measurement that should be updated
    # @return [inline_response_200_2]
    def measurements_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling measurements_id_put" if id.nil?
      
      # resource path
      path = "/measurements/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = []
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Measurement
    # Delete Measurement
    # @param id id of Measurement
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_2]
    def measurements_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling measurements_id_delete" if id.nil?
      
      # resource path
      path = "/measurements/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end



