=begin
#Eligibility

#Reference for developers

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module SwaggerClient
  # Eligibility 270 Request Model
  class MedicalEligibility
    # Segment: ISA, Element: ISA13, Notes: Required, Interchange Control Number - must be exactly 9 positive unsigned numeric characters.
    attr_accessor :control_number

    # Loop: 2000D, Notes: Dependent Detail
    attr_accessor :dependents

    # Loop: 2110[C|D], Notes: Subscriber or Dependent Eligibility or Benefit Inquiry
    attr_accessor :encounter

    attr_accessor :information_receiver_name

    attr_accessor :partner_id

    # Loop: 2100B, Segment: REF, Element: REF02, Notes: Personal Identification Number (PIN) REF01=4A
    attr_accessor :portal_password

    # Loop: 2100B, Segment: REF, Element: REF02, Notes: User Identification REF01=JD
    attr_accessor :portal_username

    # Loop: 2100B, Segment: NM1, Notes: Information Receiver
    attr_accessor :provider

    attr_accessor :subscriber

    # This property is a feature of Trading Partner API, if you are not using Trading Partner API, please use tradingPartnerServiceId as the payorId
    attr_accessor :trading_partner_id

    # Loop: 2100A, Segment: NM1, Element: NM103, Notes: organizational name
    attr_accessor :trading_partner_name

    # Loop: 2100A Segment: NM1, Element: NM109, Notes:      , we send this as MN108 as PI
    attr_accessor :trading_partner_service_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'control_number' => :'controlNumber',
        :'dependents' => :'dependents',
        :'encounter' => :'encounter',
        :'information_receiver_name' => :'informationReceiverName',
        :'partner_id' => :'partnerId',
        :'portal_password' => :'portalPassword',
        :'portal_username' => :'portalUsername',
        :'provider' => :'provider',
        :'subscriber' => :'subscriber',
        :'trading_partner_id' => :'tradingPartnerId',
        :'trading_partner_name' => :'tradingPartnerName',
        :'trading_partner_service_id' => :'tradingPartnerServiceId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'control_number' => :'String',
        :'dependents' => :'Array<RequestDependent>',
        :'encounter' => :'Encounter',
        :'information_receiver_name' => :'InformationReceiverName',
        :'partner_id' => :'BOOLEAN',
        :'portal_password' => :'String',
        :'portal_username' => :'String',
        :'provider' => :'Provider',
        :'subscriber' => :'RequestSubscriber',
        :'trading_partner_id' => :'String',
        :'trading_partner_name' => :'String',
        :'trading_partner_service_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'controlNumber')
        self.control_number = attributes[:'controlNumber']
      end

      if attributes.has_key?(:'dependents')
        if (value = attributes[:'dependents']).is_a?(Array)
          self.dependents = value
        end
      end

      if attributes.has_key?(:'encounter')
        self.encounter = attributes[:'encounter']
      end

      if attributes.has_key?(:'informationReceiverName')
        self.information_receiver_name = attributes[:'informationReceiverName']
      end

      if attributes.has_key?(:'partnerId')
        self.partner_id = attributes[:'partnerId']
      end

      if attributes.has_key?(:'portalPassword')
        self.portal_password = attributes[:'portalPassword']
      end

      if attributes.has_key?(:'portalUsername')
        self.portal_username = attributes[:'portalUsername']
      end

      if attributes.has_key?(:'provider')
        self.provider = attributes[:'provider']
      end

      if attributes.has_key?(:'subscriber')
        self.subscriber = attributes[:'subscriber']
      end

      if attributes.has_key?(:'tradingPartnerId')
        self.trading_partner_id = attributes[:'tradingPartnerId']
      end

      if attributes.has_key?(:'tradingPartnerName')
        self.trading_partner_name = attributes[:'tradingPartnerName']
      end

      if attributes.has_key?(:'tradingPartnerServiceId')
        self.trading_partner_service_id = attributes[:'tradingPartnerServiceId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          control_number == o.control_number &&
          dependents == o.dependents &&
          encounter == o.encounter &&
          information_receiver_name == o.information_receiver_name &&
          partner_id == o.partner_id &&
          portal_password == o.portal_password &&
          portal_username == o.portal_username &&
          provider == o.provider &&
          subscriber == o.subscriber &&
          trading_partner_id == o.trading_partner_id &&
          trading_partner_name == o.trading_partner_name &&
          trading_partner_service_id == o.trading_partner_service_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [control_number, dependents, encounter, information_receiver_name, partner_id, portal_password, portal_username, provider, subscriber, trading_partner_id, trading_partner_name, trading_partner_service_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
