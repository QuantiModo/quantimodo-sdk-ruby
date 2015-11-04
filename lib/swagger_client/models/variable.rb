module SwaggerClient
  # 
  class Variable < BaseObject
    attr_accessor :id, :client_id, :parent_id, :name, :variable_category_id, :default_unit_id, :combination_operation, :filling_value, :maximum_allowed_value, :minimum_allowed_value, :onset_delay, :duration_of_action, :public, :cause_only, :most_common_value, :most_common_unit_id, :standard_deviation, :variance, :mean, :median, :number_of_measurements, :number_of_unique_values, :skewness, :kurtosis, :status, :error_message, :last_successful_update_time, :created_at, :updated_at, :product_url, :image_url, :price, :number_of_user_variables, :outcome, :minimum_recorded_value, :maximum_recorded_value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # client_id
        :'client_id' => :'client_id',
        
        # parent_id
        :'parent_id' => :'parent_id',
        
        # Name of the variable
        :'name' => :'name',
        
        # Category of the variable
        :'variable_category_id' => :'variable_category_id',
        
        # ID of the default unit of measurement to use for this variable
        :'default_unit_id' => :'default_unit_id',
        
        # How to combine values of this variable (for instance, to see a summary of the values over a month) 0 for sum OR 1 for mean
        :'combination_operation' => :'combination_operation',
        
        # filling_value
        :'filling_value' => :'filling_value',
        
        # maximum_allowed_value
        :'maximum_allowed_value' => :'maximum_allowed_value',
        
        # minimum_allowed_value
        :'minimum_allowed_value' => :'minimum_allowed_value',
        
        # onset_delay
        :'onset_delay' => :'onset_delay',
        
        # duration_of_action
        :'duration_of_action' => :'duration_of_action',
        
        # public
        :'public' => :'public',
        
        # cause_only
        :'cause_only' => :'cause_only',
        
        # most_common_value
        :'most_common_value' => :'most_common_value',
        
        # most_common_unit_id
        :'most_common_unit_id' => :'most_common_unit_id',
        
        # standard_deviation
        :'standard_deviation' => :'standard_deviation',
        
        # variance
        :'variance' => :'variance',
        
        # mean
        :'mean' => :'mean',
        
        # median
        :'median' => :'median',
        
        # number_of_measurements
        :'number_of_measurements' => :'number_of_measurements',
        
        # number_of_unique_values
        :'number_of_unique_values' => :'number_of_unique_values',
        
        # skewness
        :'skewness' => :'skewness',
        
        # kurtosis
        :'kurtosis' => :'kurtosis',
        
        # status
        :'status' => :'status',
        
        # error_message
        :'error_message' => :'error_message',
        
        # last_successful_update_time
        :'last_successful_update_time' => :'last_successful_update_time',
        
        # created_at
        :'created_at' => :'created_at',
        
        # updated_at
        :'updated_at' => :'updated_at',
        
        # product_url
        :'product_url' => :'product_url',
        
        # image_url
        :'image_url' => :'image_url',
        
        # price
        :'price' => :'price',
        
        # number_of_user_variables
        :'number_of_user_variables' => :'number_of_user_variables',
        
        # outcome
        :'outcome' => :'outcome',
        
        # minimum_recorded_value
        :'minimum_recorded_value' => :'minimum_recorded_value',
        
        # maximum_recorded_value
        :'maximum_recorded_value' => :'maximum_recorded_value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'client_id' => :'String',
        :'parent_id' => :'Integer',
        :'name' => :'String',
        :'variable_category_id' => :'Integer',
        :'default_unit_id' => :'Integer',
        :'combination_operation' => :'String',
        :'filling_value' => :'Float',
        :'maximum_allowed_value' => :'Float',
        :'minimum_allowed_value' => :'Float',
        :'onset_delay' => :'Integer',
        :'duration_of_action' => :'Integer',
        :'public' => :'Integer',
        :'cause_only' => :'BOOLEAN',
        :'most_common_value' => :'Float',
        :'most_common_unit_id' => :'Integer',
        :'standard_deviation' => :'Float',
        :'variance' => :'Float',
        :'mean' => :'Float',
        :'median' => :'Float',
        :'number_of_measurements' => :'Float',
        :'number_of_unique_values' => :'Float',
        :'skewness' => :'Float',
        :'kurtosis' => :'Float',
        :'status' => :'String',
        :'error_message' => :'String',
        :'last_successful_update_time' => :'DateTime',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'product_url' => :'String',
        :'image_url' => :'String',
        :'price' => :'Float',
        :'number_of_user_variables' => :'Integer',
        :'outcome' => :'BOOLEAN',
        :'minimum_recorded_value' => :'Float',
        :'maximum_recorded_value' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'client_id']
        self.client_id = attributes[:'client_id']
      end
      
      if attributes[:'parent_id']
        self.parent_id = attributes[:'parent_id']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'variable_category_id']
        self.variable_category_id = attributes[:'variable_category_id']
      end
      
      if attributes[:'default_unit_id']
        self.default_unit_id = attributes[:'default_unit_id']
      end
      
      if attributes[:'combination_operation']
        self.combination_operation = attributes[:'combination_operation']
      end
      
      if attributes[:'filling_value']
        self.filling_value = attributes[:'filling_value']
      end
      
      if attributes[:'maximum_allowed_value']
        self.maximum_allowed_value = attributes[:'maximum_allowed_value']
      end
      
      if attributes[:'minimum_allowed_value']
        self.minimum_allowed_value = attributes[:'minimum_allowed_value']
      end
      
      if attributes[:'onset_delay']
        self.onset_delay = attributes[:'onset_delay']
      end
      
      if attributes[:'duration_of_action']
        self.duration_of_action = attributes[:'duration_of_action']
      end
      
      if attributes[:'public']
        self.public = attributes[:'public']
      end
      
      if attributes[:'cause_only']
        self.cause_only = attributes[:'cause_only']
      end
      
      if attributes[:'most_common_value']
        self.most_common_value = attributes[:'most_common_value']
      end
      
      if attributes[:'most_common_unit_id']
        self.most_common_unit_id = attributes[:'most_common_unit_id']
      end
      
      if attributes[:'standard_deviation']
        self.standard_deviation = attributes[:'standard_deviation']
      end
      
      if attributes[:'variance']
        self.variance = attributes[:'variance']
      end
      
      if attributes[:'mean']
        self.mean = attributes[:'mean']
      end
      
      if attributes[:'median']
        self.median = attributes[:'median']
      end
      
      if attributes[:'number_of_measurements']
        self.number_of_measurements = attributes[:'number_of_measurements']
      end
      
      if attributes[:'number_of_unique_values']
        self.number_of_unique_values = attributes[:'number_of_unique_values']
      end
      
      if attributes[:'skewness']
        self.skewness = attributes[:'skewness']
      end
      
      if attributes[:'kurtosis']
        self.kurtosis = attributes[:'kurtosis']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'error_message']
        self.error_message = attributes[:'error_message']
      end
      
      if attributes[:'last_successful_update_time']
        self.last_successful_update_time = attributes[:'last_successful_update_time']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
      if attributes[:'product_url']
        self.product_url = attributes[:'product_url']
      end
      
      if attributes[:'image_url']
        self.image_url = attributes[:'image_url']
      end
      
      if attributes[:'price']
        self.price = attributes[:'price']
      end
      
      if attributes[:'number_of_user_variables']
        self.number_of_user_variables = attributes[:'number_of_user_variables']
      end
      
      if attributes[:'outcome']
        self.outcome = attributes[:'outcome']
      end
      
      if attributes[:'minimum_recorded_value']
        self.minimum_recorded_value = attributes[:'minimum_recorded_value']
      end
      
      if attributes[:'maximum_recorded_value']
        self.maximum_recorded_value = attributes[:'maximum_recorded_value']
      end
      
    end

  end
end
