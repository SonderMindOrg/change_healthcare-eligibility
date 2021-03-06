# #Eligibility
#
# Reference for developers
#
# OpenAPI spec version: v3
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
# Swagger Codegen version: 2.4.17
#

require 'date'

module ChangeHealthcare
  module Eligibility
    module SwaggerClient
      class Loop2100ASegmentsNM1AndPERNotesInformationSourceName
        # Loop: 2100A, Segments: NM1, Element: NM109 Notes: NM108=XV Centers for Medicare and Medicaid Services PlanID
        attr_accessor :centers_for_medicare_and_medicaid_plan_id

        # Loop: 2100A, Segments: PER, Notes: Information Source Contact Information
        attr_accessor :contact_information

        # Loop: 2100A, Segments: NM1, Element: NM109 Notes: NM108=24 Employer’s Identification Number
        attr_accessor :employers_id

        # Loop: 2100A, Segments: NM1, Element: NM101 Notes: Entity Identifier Code
        attr_accessor :entity_identifier

        # Loop: 2100A, Segments: NM1, Element: NM102 Notes: Entity Type Qualifier
        attr_accessor :entity_type

        attr_accessor :etin, :naic, :npi

        # Loop: 2100A, Segments: NM1, Element: NM109 Notes: NM108=FI Federal Taxpayer’s Identification Number
        attr_accessor :federal_taxpayers_id_number

        # Loop: 2100A, Segments: NM1, Element: NM104 Notes: Name First
        attr_accessor :first_name

        # Loop: 2100A, Segments: NM1, Element: NM103 Notes: Name Last
        attr_accessor :last_name

        # Loop: 2100A, Segments: NM1, Element: NM105 Notes: Name Middle
        attr_accessor :middle_name

        # Loop: 2100A, Segments: NM1, Element: NM103 Notes: Organization Name
        attr_accessor :name

        # Loop: 2100A, Segments: NM1, Element: NM109 Notes: NM108=PI Payor Identification
        attr_accessor :payor_identification

        # Loop: 2100A, Segments: NM1, Element: NM107 Notes: Name Suffix
        attr_accessor :suffix

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            'centers_for_medicare_and_medicaid_plan_id': :centersForMedicareAndMedicaidPlanId,
            'contact_information': :contactInformation,
            'employers_id': :employersId,
            'entity_identifier': :entityIdentifier,
            'entity_type': :entityType,
            'etin': :etin,
            'federal_taxpayers_id_number': :federalTaxpayersIdNumber,
            'first_name': :firstName,
            'last_name': :lastName,
            'middle_name': :middleName,
            'naic': :naic,
            'name': :name,
            'npi': :npi,
            'payor_identification': :payorIdentification,
            'suffix': :suffix
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            'centers_for_medicare_and_medicaid_plan_id': :String,
            'contact_information': :Loop2100ASegmentsPERNotesInformationSourceContactInformation,
            'employers_id': :String,
            'entity_identifier': :String,
            'entity_type': :String,
            'etin': :String,
            'federal_taxpayers_id_number': :String,
            'first_name': :String,
            'last_name': :String,
            'middle_name': :String,
            'naic': :String,
            'name': :String,
            'npi': :String,
            'payor_identification': :String,
            'suffix': :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          if attributes.key?(:centersForMedicareAndMedicaidPlanId)
            self.centers_for_medicare_and_medicaid_plan_id = attributes[:centersForMedicareAndMedicaidPlanId]
          end

          self.contact_information = attributes[:contactInformation] if attributes.key?(:contactInformation)

          self.employers_id = attributes[:employersId] if attributes.key?(:employersId)

          self.entity_identifier = attributes[:entityIdentifier] if attributes.key?(:entityIdentifier)

          self.entity_type = attributes[:entityType] if attributes.key?(:entityType)

          self.etin = attributes[:etin] if attributes.key?(:etin)

          self.federal_taxpayers_id_number = attributes[:federalTaxpayersIdNumber] if attributes.key?(:federalTaxpayersIdNumber)

          self.first_name = attributes[:firstName] if attributes.key?(:firstName)

          self.last_name = attributes[:lastName] if attributes.key?(:lastName)

          self.middle_name = attributes[:middleName] if attributes.key?(:middleName)

          self.naic = attributes[:naic] if attributes.key?(:naic)

          self.name = attributes[:name] if attributes.key?(:name)

          self.npi = attributes[:npi] if attributes.key?(:npi)

          self.payor_identification = attributes[:payorIdentification] if attributes.key?(:payorIdentification)

          self.suffix = attributes[:suffix] if attributes.key?(:suffix)
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          []
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if equal?(o)

          self.class == o.class &&
            centers_for_medicare_and_medicaid_plan_id == o.centers_for_medicare_and_medicaid_plan_id &&
            contact_information == o.contact_information &&
            employers_id == o.employers_id &&
            entity_identifier == o.entity_identifier &&
            entity_type == o.entity_type &&
            etin == o.etin &&
            federal_taxpayers_id_number == o.federal_taxpayers_id_number &&
            first_name == o.first_name &&
            last_name == o.last_name &&
            middle_name == o.middle_name &&
            naic == o.naic &&
            name == o.name &&
            npi == o.npi &&
            payor_identification == o.payor_identification &&
            suffix == o.suffix
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [centers_for_medicare_and_medicaid_plan_id, contact_information, employers_id, entity_identifier, entity_type, etin, federal_taxpayers_id_number, first_name, last_name, middle_name, naic, name, npi, payor_identification, suffix].hash
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
                send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize(Regexp.last_match(1), v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
            value = send(attr)
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
  end
end
