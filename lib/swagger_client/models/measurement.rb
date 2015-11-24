module SwaggerClient
  # 
  class Measurement < BaseObject
    attr_accessor :id, :user_id, :client_id, :connector_id, :variable_id, :source_id, :start_time, :value, :unit_id, :original_value, :original_unit_id, :duration, :note, :latitude, :longitude, :location, :created_at, :updated_at, :error
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # ID of user that owns this measurement
        :'user_id' => :'user_id',
        
        # client_id
        :'client_id' => :'client_id',
        
        # The id for the connector data source from which the measurement was obtained
        :'connector_id' => :'connector_id',
        
        # ID of the variable for which we are creating the measurement records
        :'variable_id' => :'variable_id',
        
        # Application or device used to record the measurement values
        :'source_id' => :'source_id',
        
        # Start Time for the measurement event. Use ISO 8601
        :'start_time' => :'start_time',
        
        # The value of the measurement after conversion to the default unit for that variable
        :'value' => :'value',
        
        # The default unit for the variable
        :'unit_id' => :'unit_id',
        
        # Value of measurement as originally posted (before conversion to default unit)
        :'original_value' => :'original_value',
        
        # Unit ID of measurement as originally submitted
        :'original_unit_id' => :'original_unit_id',
        
        # Duration of the event being measurement in seconds
        :'duration' => :'duration',
        
        # An optional note the user may include with their measurement
        :'note' => :'note',
        
        # Latitude at which the measurement was taken
        :'latitude' => :'latitude',
        
        # Longitude at which the measurement was taken
        :'longitude' => :'longitude',
        
        # location
        :'location' => :'location',
        
        # When the record was first created. Use ISO 8601 datetime format
        :'created_at' => :'created_at',
        
        # When the record in the database was last updated. Use ISO 8601 datetime format
        :'updated_at' => :'updated_at',
        
        # error
        :'error' => :'error'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'user_id' => :'Integer',
        :'client_id' => :'String',
        :'connector_id' => :'Integer',
        :'variable_id' => :'Integer',
        :'source_id' => :'Integer',
        :'start_time' => :'String',
        :'value' => :'Float',
        :'unit_id' => :'Integer',
        :'original_value' => :'Float',
        :'original_unit_id' => :'Integer',
        :'duration' => :'Integer',
        :'note' => :'String',
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'location' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'error' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'user_id']
        self.user_id = attributes[:'user_id']
      end
      
      if attributes[:'client_id']
        self.client_id = attributes[:'client_id']
      end
      
      if attributes[:'connector_id']
        self.connector_id = attributes[:'connector_id']
      end
      
      if attributes[:'variable_id']
        self.variable_id = attributes[:'variable_id']
      end
      
      if attributes[:'source_id']
        self.source_id = attributes[:'source_id']
      end
      
      if attributes[:'start_time']
        self.start_time = attributes[:'start_time']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
      if attributes[:'unit_id']
        self.unit_id = attributes[:'unit_id']
      end
      
      if attributes[:'original_value']
        self.original_value = attributes[:'original_value']
      end
      
      if attributes[:'original_unit_id']
        self.original_unit_id = attributes[:'original_unit_id']
      end
      
      if attributes[:'duration']
        self.duration = attributes[:'duration']
      end
      
      if attributes[:'note']
        self.note = attributes[:'note']
      end
      
      if attributes[:'latitude']
        self.latitude = attributes[:'latitude']
      end
      
      if attributes[:'longitude']
        self.longitude = attributes[:'longitude']
      end
      
      if attributes[:'location']
        self.location = attributes[:'location']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
      if attributes[:'error']
        self.error = attributes[:'error']
      end
      
    end

  end
end
