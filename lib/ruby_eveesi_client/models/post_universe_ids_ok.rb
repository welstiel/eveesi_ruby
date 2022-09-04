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
  class PostUniverseIdsOk
    # agents array
    attr_accessor :agents

    # alliances array
    attr_accessor :alliances

    # characters array
    attr_accessor :characters

    # constellations array
    attr_accessor :constellations

    # corporations array
    attr_accessor :corporations

    # factions array
    attr_accessor :factions

    # inventory_types array
    attr_accessor :inventory_types

    # regions array
    attr_accessor :regions

    # stations array
    attr_accessor :stations

    # systems array
    attr_accessor :systems

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agents' => :'agents',
        :'alliances' => :'alliances',
        :'characters' => :'characters',
        :'constellations' => :'constellations',
        :'corporations' => :'corporations',
        :'factions' => :'factions',
        :'inventory_types' => :'inventory_types',
        :'regions' => :'regions',
        :'stations' => :'stations',
        :'systems' => :'systems'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'agents' => :'Array<PostUniverseIdsAgent>',
        :'alliances' => :'Array<PostUniverseIdsAlliance>',
        :'characters' => :'Array<PostUniverseIdsCharacter>',
        :'constellations' => :'Array<PostUniverseIdsConstellation>',
        :'corporations' => :'Array<PostUniverseIdsCorporation>',
        :'factions' => :'Array<PostUniverseIdsFaction>',
        :'inventory_types' => :'Array<PostUniverseIdsInventoryType>',
        :'regions' => :'Array<PostUniverseIdsRegion>',
        :'stations' => :'Array<PostUniverseIdsStation>',
        :'systems' => :'Array<PostUniverseIdsSystem>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `RubyEveesiClient::PostUniverseIdsOk` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RubyEveesiClient::PostUniverseIdsOk`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agents')
        if (value = attributes[:'agents']).is_a?(Array)
          self.agents = value
        end
      end

      if attributes.key?(:'alliances')
        if (value = attributes[:'alliances']).is_a?(Array)
          self.alliances = value
        end
      end

      if attributes.key?(:'characters')
        if (value = attributes[:'characters']).is_a?(Array)
          self.characters = value
        end
      end

      if attributes.key?(:'constellations')
        if (value = attributes[:'constellations']).is_a?(Array)
          self.constellations = value
        end
      end

      if attributes.key?(:'corporations')
        if (value = attributes[:'corporations']).is_a?(Array)
          self.corporations = value
        end
      end

      if attributes.key?(:'factions')
        if (value = attributes[:'factions']).is_a?(Array)
          self.factions = value
        end
      end

      if attributes.key?(:'inventory_types')
        if (value = attributes[:'inventory_types']).is_a?(Array)
          self.inventory_types = value
        end
      end

      if attributes.key?(:'regions')
        if (value = attributes[:'regions']).is_a?(Array)
          self.regions = value
        end
      end

      if attributes.key?(:'stations')
        if (value = attributes[:'stations']).is_a?(Array)
          self.stations = value
        end
      end

      if attributes.key?(:'systems')
        if (value = attributes[:'systems']).is_a?(Array)
          self.systems = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@agents.nil? && @agents.length > 500
        invalid_properties.push('invalid value for "agents", number of items must be less than or equal to 500.')
      end

      if !@alliances.nil? && @alliances.length > 500
        invalid_properties.push('invalid value for "alliances", number of items must be less than or equal to 500.')
      end

      if !@characters.nil? && @characters.length > 500
        invalid_properties.push('invalid value for "characters", number of items must be less than or equal to 500.')
      end

      if !@constellations.nil? && @constellations.length > 500
        invalid_properties.push('invalid value for "constellations", number of items must be less than or equal to 500.')
      end

      if !@corporations.nil? && @corporations.length > 500
        invalid_properties.push('invalid value for "corporations", number of items must be less than or equal to 500.')
      end

      if !@factions.nil? && @factions.length > 500
        invalid_properties.push('invalid value for "factions", number of items must be less than or equal to 500.')
      end

      if !@inventory_types.nil? && @inventory_types.length > 500
        invalid_properties.push('invalid value for "inventory_types", number of items must be less than or equal to 500.')
      end

      if !@regions.nil? && @regions.length > 500
        invalid_properties.push('invalid value for "regions", number of items must be less than or equal to 500.')
      end

      if !@stations.nil? && @stations.length > 500
        invalid_properties.push('invalid value for "stations", number of items must be less than or equal to 500.')
      end

      if !@systems.nil? && @systems.length > 500
        invalid_properties.push('invalid value for "systems", number of items must be less than or equal to 500.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@agents.nil? && @agents.length > 500
      return false if !@alliances.nil? && @alliances.length > 500
      return false if !@characters.nil? && @characters.length > 500
      return false if !@constellations.nil? && @constellations.length > 500
      return false if !@corporations.nil? && @corporations.length > 500
      return false if !@factions.nil? && @factions.length > 500
      return false if !@inventory_types.nil? && @inventory_types.length > 500
      return false if !@regions.nil? && @regions.length > 500
      return false if !@stations.nil? && @stations.length > 500
      return false if !@systems.nil? && @systems.length > 500
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] agents Value to be assigned
    def agents=(agents)
      if !agents.nil? && agents.length > 500
        fail ArgumentError, 'invalid value for "agents", number of items must be less than or equal to 500.'
      end

      @agents = agents
    end

    # Custom attribute writer method with validation
    # @param [Object] alliances Value to be assigned
    def alliances=(alliances)
      if !alliances.nil? && alliances.length > 500
        fail ArgumentError, 'invalid value for "alliances", number of items must be less than or equal to 500.'
      end

      @alliances = alliances
    end

    # Custom attribute writer method with validation
    # @param [Object] characters Value to be assigned
    def characters=(characters)
      if !characters.nil? && characters.length > 500
        fail ArgumentError, 'invalid value for "characters", number of items must be less than or equal to 500.'
      end

      @characters = characters
    end

    # Custom attribute writer method with validation
    # @param [Object] constellations Value to be assigned
    def constellations=(constellations)
      if !constellations.nil? && constellations.length > 500
        fail ArgumentError, 'invalid value for "constellations", number of items must be less than or equal to 500.'
      end

      @constellations = constellations
    end

    # Custom attribute writer method with validation
    # @param [Object] corporations Value to be assigned
    def corporations=(corporations)
      if !corporations.nil? && corporations.length > 500
        fail ArgumentError, 'invalid value for "corporations", number of items must be less than or equal to 500.'
      end

      @corporations = corporations
    end

    # Custom attribute writer method with validation
    # @param [Object] factions Value to be assigned
    def factions=(factions)
      if !factions.nil? && factions.length > 500
        fail ArgumentError, 'invalid value for "factions", number of items must be less than or equal to 500.'
      end

      @factions = factions
    end

    # Custom attribute writer method with validation
    # @param [Object] inventory_types Value to be assigned
    def inventory_types=(inventory_types)
      if !inventory_types.nil? && inventory_types.length > 500
        fail ArgumentError, 'invalid value for "inventory_types", number of items must be less than or equal to 500.'
      end

      @inventory_types = inventory_types
    end

    # Custom attribute writer method with validation
    # @param [Object] regions Value to be assigned
    def regions=(regions)
      if !regions.nil? && regions.length > 500
        fail ArgumentError, 'invalid value for "regions", number of items must be less than or equal to 500.'
      end

      @regions = regions
    end

    # Custom attribute writer method with validation
    # @param [Object] stations Value to be assigned
    def stations=(stations)
      if !stations.nil? && stations.length > 500
        fail ArgumentError, 'invalid value for "stations", number of items must be less than or equal to 500.'
      end

      @stations = stations
    end

    # Custom attribute writer method with validation
    # @param [Object] systems Value to be assigned
    def systems=(systems)
      if !systems.nil? && systems.length > 500
        fail ArgumentError, 'invalid value for "systems", number of items must be less than or equal to 500.'
      end

      @systems = systems
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agents == o.agents &&
          alliances == o.alliances &&
          characters == o.characters &&
          constellations == o.constellations &&
          corporations == o.corporations &&
          factions == o.factions &&
          inventory_types == o.inventory_types &&
          regions == o.regions &&
          stations == o.stations &&
          systems == o.systems
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [agents, alliances, characters, constellations, corporations, factions, inventory_types, regions, stations, systems].hash
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