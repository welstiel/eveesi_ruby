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
  # 200 ok object
  class GetContractsPublicItemsContractId200Ok
    # is_blueprint_copy boolean
    attr_accessor :is_blueprint_copy

    # true if the contract issuer has submitted this item with the contract, false if the isser is asking for this item in the contract
    attr_accessor :is_included

    # Unique ID for the item being sold. Not present if item is being requested by contract rather than sold with contract
    attr_accessor :item_id

    # Material Efficiency Level of the blueprint
    attr_accessor :material_efficiency

    # Number of items in the stack
    attr_accessor :quantity

    # Unique ID for the item, used by the contract system
    attr_accessor :record_id

    # Number of runs remaining if the blueprint is a copy, -1 if it is an original
    attr_accessor :runs

    # Time Efficiency Level of the blueprint
    attr_accessor :time_efficiency

    # Type ID for item
    attr_accessor :type_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_blueprint_copy' => :'is_blueprint_copy',
        :'is_included' => :'is_included',
        :'item_id' => :'item_id',
        :'material_efficiency' => :'material_efficiency',
        :'quantity' => :'quantity',
        :'record_id' => :'record_id',
        :'runs' => :'runs',
        :'time_efficiency' => :'time_efficiency',
        :'type_id' => :'type_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_blueprint_copy' => :'Boolean',
        :'is_included' => :'Boolean',
        :'item_id' => :'Integer',
        :'material_efficiency' => :'Integer',
        :'quantity' => :'Integer',
        :'record_id' => :'Integer',
        :'runs' => :'Integer',
        :'time_efficiency' => :'Integer',
        :'type_id' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `RubyEveesiClient::GetContractsPublicItemsContractId200Ok` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RubyEveesiClient::GetContractsPublicItemsContractId200Ok`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_blueprint_copy')
        self.is_blueprint_copy = attributes[:'is_blueprint_copy']
      end

      if attributes.key?(:'is_included')
        self.is_included = attributes[:'is_included']
      end

      if attributes.key?(:'item_id')
        self.item_id = attributes[:'item_id']
      end

      if attributes.key?(:'material_efficiency')
        self.material_efficiency = attributes[:'material_efficiency']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'record_id')
        self.record_id = attributes[:'record_id']
      end

      if attributes.key?(:'runs')
        self.runs = attributes[:'runs']
      end

      if attributes.key?(:'time_efficiency')
        self.time_efficiency = attributes[:'time_efficiency']
      end

      if attributes.key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_included.nil?
        invalid_properties.push('invalid value for "is_included", is_included cannot be nil.')
      end

      if !@material_efficiency.nil? && @material_efficiency > 25
        invalid_properties.push('invalid value for "material_efficiency", must be smaller than or equal to 25.')
      end

      if !@material_efficiency.nil? && @material_efficiency < 0
        invalid_properties.push('invalid value for "material_efficiency", must be greater than or equal to 0.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @record_id.nil?
        invalid_properties.push('invalid value for "record_id", record_id cannot be nil.')
      end

      if !@runs.nil? && @runs < -1
        invalid_properties.push('invalid value for "runs", must be greater than or equal to -1.')
      end

      if !@time_efficiency.nil? && @time_efficiency > 20
        invalid_properties.push('invalid value for "time_efficiency", must be smaller than or equal to 20.')
      end

      if !@time_efficiency.nil? && @time_efficiency < 0
        invalid_properties.push('invalid value for "time_efficiency", must be greater than or equal to 0.')
      end

      if @type_id.nil?
        invalid_properties.push('invalid value for "type_id", type_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_included.nil?
      return false if !@material_efficiency.nil? && @material_efficiency > 25
      return false if !@material_efficiency.nil? && @material_efficiency < 0
      return false if @quantity.nil?
      return false if @record_id.nil?
      return false if !@runs.nil? && @runs < -1
      return false if !@time_efficiency.nil? && @time_efficiency > 20
      return false if !@time_efficiency.nil? && @time_efficiency < 0
      return false if @type_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] material_efficiency Value to be assigned
    def material_efficiency=(material_efficiency)
      if !material_efficiency.nil? && material_efficiency > 25
        fail ArgumentError, 'invalid value for "material_efficiency", must be smaller than or equal to 25.'
      end

      if !material_efficiency.nil? && material_efficiency < 0
        fail ArgumentError, 'invalid value for "material_efficiency", must be greater than or equal to 0.'
      end

      @material_efficiency = material_efficiency
    end

    # Custom attribute writer method with validation
    # @param [Object] runs Value to be assigned
    def runs=(runs)
      if !runs.nil? && runs < -1
        fail ArgumentError, 'invalid value for "runs", must be greater than or equal to -1.'
      end

      @runs = runs
    end

    # Custom attribute writer method with validation
    # @param [Object] time_efficiency Value to be assigned
    def time_efficiency=(time_efficiency)
      if !time_efficiency.nil? && time_efficiency > 20
        fail ArgumentError, 'invalid value for "time_efficiency", must be smaller than or equal to 20.'
      end

      if !time_efficiency.nil? && time_efficiency < 0
        fail ArgumentError, 'invalid value for "time_efficiency", must be greater than or equal to 0.'
      end

      @time_efficiency = time_efficiency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_blueprint_copy == o.is_blueprint_copy &&
          is_included == o.is_included &&
          item_id == o.item_id &&
          material_efficiency == o.material_efficiency &&
          quantity == o.quantity &&
          record_id == o.record_id &&
          runs == o.runs &&
          time_efficiency == o.time_efficiency &&
          type_id == o.type_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_blueprint_copy, is_included, item_id, material_efficiency, quantity, record_id, runs, time_efficiency, type_id].hash
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
