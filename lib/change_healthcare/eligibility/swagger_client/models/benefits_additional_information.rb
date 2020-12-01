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
      class BenefitsAdditionalInformation
        attr_accessor :agency_claim_number, :alternative_list_id, :case_number, :centers_for_medicare_and_medicaid_services_npi, :class_of_contract_code, :contract_number, :coverage_list_id, :drug_formulary_number, :electronic_device_pin, :eligibility_category, :facility_id_number, :facility_network_identification_number, :family_unit_number, :federal_taxpayers_identification_number, :group_number, :hic_number, :id_card_number, :id_card_serial_number, :insurance_policy_number, :issue_number, :medicaid_provider_number, :medicaid_recepient_id_number, :medical_assistance_category, :medical_record_identification_number, :medicare_provider_number, :member_id, :patient_account_number, :personal_identification_number, :plan_network_id_number, :plan_number, :policy_number, :prior_authorization_number, :prior_id_number, :referral_number, :social_security_number, :state_license_number, :submitter_identification_number, :user_identification

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            'agency_claim_number': :agencyClaimNumber,
            'alternative_list_id': :alternativeListId,
            'case_number': :caseNumber,
            'centers_for_medicare_and_medicaid_services_npi': :centersForMedicareAndMedicaidServicesNPI,
            'class_of_contract_code': :classOfContractCode,
            'contract_number': :contractNumber,
            'coverage_list_id': :coverageListId,
            'drug_formulary_number': :drugFormularyNumber,
            'electronic_device_pin': :electronicDevicePin,
            'eligibility_category': :eligibilityCategory,
            'facility_id_number': :facilityIdNumber,
            'facility_network_identification_number': :facilityNetworkIdentificationNumber,
            'family_unit_number': :familyUnitNumber,
            'federal_taxpayers_identification_number': :federalTaxpayersIdentificationNumber,
            'group_number': :groupNumber,
            'hic_number': :hicNumber,
            'id_card_number': :idCardNumber,
            'id_card_serial_number': :idCardSerialNumber,
            'insurance_policy_number': :insurancePolicyNumber,
            'issue_number': :issueNumber,
            'medicaid_provider_number': :medicaidProviderNumber,
            'medicaid_recepient_id_number': :medicaidRecepientIdNumber,
            'medical_assistance_category': :medicalAssistanceCategory,
            'medical_record_identification_number': :medicalRecordIdentificationNumber,
            'medicare_provider_number': :medicareProviderNumber,
            'member_id': :memberId,
            'patient_account_number': :patientAccountNumber,
            'personal_identification_number': :personalIdentificationNumber,
            'plan_network_id_number': :planNetworkIdNumber,
            'plan_number': :planNumber,
            'policy_number': :policyNumber,
            'prior_authorization_number': :priorAuthorizationNumber,
            'prior_id_number': :priorIdNumber,
            'referral_number': :referralNumber,
            'social_security_number': :socialSecurityNumber,
            'state_license_number': :stateLicenseNumber,
            'submitter_identification_number': :submitterIdentificationNumber,
            'user_identification': :userIdentification
          }
        end

        # Attribute type mapping.
        def self.swagger_types
          {
            'agency_claim_number': :String,
            'alternative_list_id': :String,
            'case_number': :String,
            'centers_for_medicare_and_medicaid_services_npi': :String,
            'class_of_contract_code': :String,
            'contract_number': :String,
            'coverage_list_id': :String,
            'drug_formulary_number': :String,
            'electronic_device_pin': :String,
            'eligibility_category': :String,
            'facility_id_number': :String,
            'facility_network_identification_number': :String,
            'family_unit_number': :String,
            'federal_taxpayers_identification_number': :String,
            'group_number': :String,
            'hic_number': :String,
            'id_card_number': :String,
            'id_card_serial_number': :String,
            'insurance_policy_number': :String,
            'issue_number': :String,
            'medicaid_provider_number': :String,
            'medicaid_recepient_id_number': :String,
            'medical_assistance_category': :String,
            'medical_record_identification_number': :String,
            'medicare_provider_number': :String,
            'member_id': :String,
            'patient_account_number': :String,
            'personal_identification_number': :String,
            'plan_network_id_number': :String,
            'plan_number': :String,
            'policy_number': :String,
            'prior_authorization_number': :String,
            'prior_id_number': :String,
            'referral_number': :String,
            'social_security_number': :String,
            'state_license_number': :String,
            'submitter_identification_number': :String,
            'user_identification': :String
          }
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          return unless attributes.is_a?(Hash)

          # convert string to symbol for hash key
          attributes = attributes.transform_keys(&:to_sym)

          self.agency_claim_number = attributes[:agencyClaimNumber] if attributes.key?(:agencyClaimNumber)

          self.alternative_list_id = attributes[:alternativeListId] if attributes.key?(:alternativeListId)

          self.case_number = attributes[:caseNumber] if attributes.key?(:caseNumber)

          if attributes.key?(:centersForMedicareAndMedicaidServicesNPI)
            self.centers_for_medicare_and_medicaid_services_npi = attributes[:centersForMedicareAndMedicaidServicesNPI]
          end

          self.class_of_contract_code = attributes[:classOfContractCode] if attributes.key?(:classOfContractCode)

          self.contract_number = attributes[:contractNumber] if attributes.key?(:contractNumber)

          self.coverage_list_id = attributes[:coverageListId] if attributes.key?(:coverageListId)

          self.drug_formulary_number = attributes[:drugFormularyNumber] if attributes.key?(:drugFormularyNumber)

          self.electronic_device_pin = attributes[:electronicDevicePin] if attributes.key?(:electronicDevicePin)

          self.eligibility_category = attributes[:eligibilityCategory] if attributes.key?(:eligibilityCategory)

          self.facility_id_number = attributes[:facilityIdNumber] if attributes.key?(:facilityIdNumber)

          if attributes.key?(:facilityNetworkIdentificationNumber)
            self.facility_network_identification_number = attributes[:facilityNetworkIdentificationNumber]
          end

          self.family_unit_number = attributes[:familyUnitNumber] if attributes.key?(:familyUnitNumber)

          if attributes.key?(:federalTaxpayersIdentificationNumber)
            self.federal_taxpayers_identification_number = attributes[:federalTaxpayersIdentificationNumber]
          end

          self.group_number = attributes[:groupNumber] if attributes.key?(:groupNumber)

          self.hic_number = attributes[:hicNumber] if attributes.key?(:hicNumber)

          self.id_card_number = attributes[:idCardNumber] if attributes.key?(:idCardNumber)

          self.id_card_serial_number = attributes[:idCardSerialNumber] if attributes.key?(:idCardSerialNumber)

          self.insurance_policy_number = attributes[:insurancePolicyNumber] if attributes.key?(:insurancePolicyNumber)

          self.issue_number = attributes[:issueNumber] if attributes.key?(:issueNumber)

          self.medicaid_provider_number = attributes[:medicaidProviderNumber] if attributes.key?(:medicaidProviderNumber)

          self.medicaid_recepient_id_number = attributes[:medicaidRecepientIdNumber] if attributes.key?(:medicaidRecepientIdNumber)

          self.medical_assistance_category = attributes[:medicalAssistanceCategory] if attributes.key?(:medicalAssistanceCategory)

          self.medical_record_identification_number = attributes[:medicalRecordIdentificationNumber] if attributes.key?(:medicalRecordIdentificationNumber)

          self.medicare_provider_number = attributes[:medicareProviderNumber] if attributes.key?(:medicareProviderNumber)

          self.member_id = attributes[:memberId] if attributes.key?(:memberId)

          self.patient_account_number = attributes[:patientAccountNumber] if attributes.key?(:patientAccountNumber)

          self.personal_identification_number = attributes[:personalIdentificationNumber] if attributes.key?(:personalIdentificationNumber)

          self.plan_network_id_number = attributes[:planNetworkIdNumber] if attributes.key?(:planNetworkIdNumber)

          self.plan_number = attributes[:planNumber] if attributes.key?(:planNumber)

          self.policy_number = attributes[:policyNumber] if attributes.key?(:policyNumber)

          self.prior_authorization_number = attributes[:priorAuthorizationNumber] if attributes.key?(:priorAuthorizationNumber)

          self.prior_id_number = attributes[:priorIdNumber] if attributes.key?(:priorIdNumber)

          self.referral_number = attributes[:referralNumber] if attributes.key?(:referralNumber)

          self.social_security_number = attributes[:socialSecurityNumber] if attributes.key?(:socialSecurityNumber)

          self.state_license_number = attributes[:stateLicenseNumber] if attributes.key?(:stateLicenseNumber)

          self.submitter_identification_number = attributes[:submitterIdentificationNumber] if attributes.key?(:submitterIdentificationNumber)

          self.user_identification = attributes[:userIdentification] if attributes.key?(:userIdentification)
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
            agency_claim_number == o.agency_claim_number &&
            alternative_list_id == o.alternative_list_id &&
            case_number == o.case_number &&
            centers_for_medicare_and_medicaid_services_npi == o.centers_for_medicare_and_medicaid_services_npi &&
            class_of_contract_code == o.class_of_contract_code &&
            contract_number == o.contract_number &&
            coverage_list_id == o.coverage_list_id &&
            drug_formulary_number == o.drug_formulary_number &&
            electronic_device_pin == o.electronic_device_pin &&
            eligibility_category == o.eligibility_category &&
            facility_id_number == o.facility_id_number &&
            facility_network_identification_number == o.facility_network_identification_number &&
            family_unit_number == o.family_unit_number &&
            federal_taxpayers_identification_number == o.federal_taxpayers_identification_number &&
            group_number == o.group_number &&
            hic_number == o.hic_number &&
            id_card_number == o.id_card_number &&
            id_card_serial_number == o.id_card_serial_number &&
            insurance_policy_number == o.insurance_policy_number &&
            issue_number == o.issue_number &&
            medicaid_provider_number == o.medicaid_provider_number &&
            medicaid_recepient_id_number == o.medicaid_recepient_id_number &&
            medical_assistance_category == o.medical_assistance_category &&
            medical_record_identification_number == o.medical_record_identification_number &&
            medicare_provider_number == o.medicare_provider_number &&
            member_id == o.member_id &&
            patient_account_number == o.patient_account_number &&
            personal_identification_number == o.personal_identification_number &&
            plan_network_id_number == o.plan_network_id_number &&
            plan_number == o.plan_number &&
            policy_number == o.policy_number &&
            prior_authorization_number == o.prior_authorization_number &&
            prior_id_number == o.prior_id_number &&
            referral_number == o.referral_number &&
            social_security_number == o.social_security_number &&
            state_license_number == o.state_license_number &&
            submitter_identification_number == o.submitter_identification_number &&
            user_identification == o.user_identification
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Fixnum] Hash code
        def hash
          [agency_claim_number, alternative_list_id, case_number, centers_for_medicare_and_medicaid_services_npi, class_of_contract_code, contract_number, coverage_list_id, drug_formulary_number, electronic_device_pin, eligibility_category, facility_id_number, facility_network_identification_number, family_unit_number, federal_taxpayers_identification_number, group_number, hic_number, id_card_number, id_card_serial_number, insurance_policy_number, issue_number, medicaid_provider_number, medicaid_recepient_id_number, medical_assistance_category, medical_record_identification_number, medicare_provider_number, member_id, patient_account_number, personal_identification_number, plan_network_id_number, plan_number, policy_number, prior_authorization_number, prior_id_number, referral_number, social_security_number, state_license_number, submitter_identification_number, user_identification].hash
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
