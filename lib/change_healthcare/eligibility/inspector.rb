module ChangeHealthcare
  module Eligibility
    ##
    # Provides basic inspection capabilities for a benefits information response.
    class Inspector
      ##
      # Set up an inspector for a response.
      #
      # @param response [ChangeHealthcare::Eligibility::SwaggerClient::Response]
      def initialize(response)
        @response = response
      end

      ##
      # Does this document certify we have coverage for a service type matching the given matcher?
      # `#===` on this matcher should take a string and return a boolean value.
      #
      # We use `#===` as there's a lot of service type codes, and you might want to use a `Proc`,
      # a `Set`, or a `Regexp` to do your matching.
      #
      # @param matcher [#===] matcher to match against, using `#===`
      # @return [true,false]
      def active_coverage?(matcher)
        active_coverage_information.any? do |coverage|
          (coverage.service_types || []).any? { |type| matcher === type } # rubocop:disable Style/CaseEquality
        end
      end

      ##
      # All benefits information records that describe a deductible.
      #
      # @return [Array<ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation>]
      def deductible_records
        benefits_information.select do |bv|
          bv.name == 'Deductible'
        end
      end

      ##
      # All BV records for co-insurance.
      #
      # @return [Array<ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation>]
      def coinsurance_records
        benefits_information.select do |bv|
          bv.name = 'Co-Insurance'
        end
      end

      ##
      # All BV records for co-payment.
      #
      # @return [Array<ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation>]
      def copayment_records
        benefits_information.select do |bv|
          bv.name = 'Co-Payment'
        end
      end

      ##
      # Benefits Information for active coverage
      #
      # @return [Array<ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation>]
      def active_coverage_information
        benefits_information.select do |bv|
          bv.name == 'Active Coverage'
        end
      end

      ##
      # A list of all benefits information.
      #
      # @return [Array<ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation>]
      def benefits_information
        response.benefits_information || []
      end

      ##
      # @return [ChangeHealthcare::Eligibility::SwaggerClient::Response]
      attr_reader :response
    end
  end
end
