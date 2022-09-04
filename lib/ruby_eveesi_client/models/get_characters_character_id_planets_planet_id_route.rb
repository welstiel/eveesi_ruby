=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

The version of the OpenAPI document: 1.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module RubyEveesiClient
  # route object
  class GetCharactersCharacterIdPlanetsPlanetIdRoute
    # content_type_id integer
    attr_accessor :content_type_id

    # destination_pin_id integer
    attr_accessor :destination_pin_id

    # quantity number
    attr_accessor :quantity

    # route_id integer
    attr_accessor :route_id

    # source_pin_id integer
    attr_accessor :source_pin_id

    # list of pin ID waypoints
    attr_accessor :waypoints

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'content_type_id' => :'content_type_id',
        :'destination_pin_id' => :'destination_pin_id',
        :'quantity' => :'quantity',
        :'route_id' => :'route_id',
        :'source_pin_id' => :'source_pin_id',
        :'waypoints' => :'waypoints'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'content_type_id' => :'Integer',
        :'destination_pin_id' => :'Integer',
        :'quantity' => :'Float',
        :'route_id' => :'Integer',
        :'source_pin_id' => :'Integer',
        :'waypoints' => :'Array<Integer>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `RubyEveesiClient::GetCharactersCharacterIdPlanetsPlanetIdRoute` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RubyEveesiClient::GetCharactersCharacterIdPlanetsPlanetIdRoute`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'content_type_id')
        self.content_type_id = attributes[:'content_type_id']
      end

      if attributes.key?(:'destination_pin_id')
        self.destination_pin_id = attributes[:'destination_pin_id']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'route_id')
        self.route_id = attributes[:'route_id']
      end

      if attributes.key?(:'source_pin_id')
        self.source_pin_id = attributes[:'source_pin_id']
      end

      if attributes.key?(:'waypoints')
        if (value = attributes[:'waypoints']).is_a?(Array)
          self.waypoints = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @content_type_id.nil?
        invalid_properties.push('invalid value for "content_type_id", content_type_id cannot be nil.')
      end

      if @destination_pin_id.nil?
        invalid_properties.push('invalid value for "destination_pin_id", destination_pin_id cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @route_id.nil?
        invalid_properties.push('invalid value for "route_id", route_id cannot be nil.')
      end

      if @source_pin_id.nil?
        invalid_properties.push('invalid value for "source_pin_id", source_pin_id cannot be nil.')
      end

      if !@waypoints.nil? && @waypoints.length > 5
        invalid_properties.push('invalid value for "waypoints", number of items must be less than or equal to 5.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @content_type_id.nil?
      return false if @destination_pin_id.nil?
      return false if @quantity.nil?
      return false if @route_id.nil?
      return false if @source_pin_id.nil?
      return false if !@waypoints.nil? && @waypoints.length > 5
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] waypoints Value to be assigned
    def waypoints=(waypoints)
      if !waypoints.nil? && waypoints.length > 5
        fail ArgumentError, 'invalid value for "waypoints", number of items must be less than or equal to 5.'
      end

      @waypoints = waypoints
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          content_type_id == o.content_type_id &&
          destination_pin_id == o.destination_pin_id &&
          quantity == o.quantity &&
          route_id == o.route_id &&
          source_pin_id == o.source_pin_id &&
          waypoints == o.waypoints
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [content_type_id, destination_pin_id, quantity, route_id, source_pin_id, waypoints].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = RubyEveesiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
