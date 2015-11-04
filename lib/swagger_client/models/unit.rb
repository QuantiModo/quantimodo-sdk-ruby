module SwaggerClient
  # 
  class Unit < BaseObject
    attr_accessor :id, :client_id, :name, :abbreviated_name, :category_id, :minimum_value, :maximum_value, :updated, :default_unit_id, :multiply, :add, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # client_id
        :'client_id' => :'client_id',
        
        # Unit name
        :'name' => :'name',
        
        # Unit abbreviation
        :'abbreviated_name' => :'abbreviated_name',
        
        # Unit category ID
        :'category_id' => :'category_id',
        
        # Unit minimum value
        :'minimum_value' => :'minimum_value',
        
        # Unit maximum value
        :'maximum_value' => :'maximum_value',
        
        # updated
        :'updated' => :'updated',
        
        # ID of default unit
        :'default_unit_id' => :'default_unit_id',
        
        # Value multiplied to
        :'multiply' => :'multiply',
        
        # Value which should be added to convert to default unit
        :'add' => :'add',
        
        # created_at
        :'created_at' => :'created_at',
        
        # updated_at
        :'updated_at' => :'updated_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'client_id' => :'String',
        :'name' => :'String',
        :'abbreviated_name' => :'String',
        :'category_id' => :'Integer',
        :'minimum_value' => :'Float',
        :'maximum_value' => :'Float',
        :'updated' => :'Integer',
        :'default_unit_id' => :'Integer',
        :'multiply' => :'Float',
        :'add' => :'Float',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
        
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
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'abbreviated_name']
        self.abbreviated_name = attributes[:'abbreviated_name']
      end
      
      if attributes[:'category_id']
        self.category_id = attributes[:'category_id']
      end
      
      if attributes[:'minimum_value']
        self.minimum_value = attributes[:'minimum_value']
      end
      
      if attributes[:'maximum_value']
        self.maximum_value = attributes[:'maximum_value']
      end
      
      if attributes[:'updated']
        self.updated = attributes[:'updated']
      end
      
      if attributes[:'default_unit_id']
        self.default_unit_id = attributes[:'default_unit_id']
      end
      
      if attributes[:'multiply']
        self.multiply = attributes[:'multiply']
      end
      
      if attributes[:'add']
        self.add = attributes[:'add']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
    end

  end
end
