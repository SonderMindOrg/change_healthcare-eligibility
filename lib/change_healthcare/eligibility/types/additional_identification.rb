module ChangeHealthcare
  module Eligibility
    module Types
      ##
      # Direct from swagger
      class AdditionalIdentification < Base
        %i[agency_claim_number contact_number health_insurance_claim_number
           identification_card_serial_number insurance_policy_number
           medial_record_identification_number member_identification_number
           patient_account_number plan_network_identification_number plan_number policy_number].each do |attr|
          attribute?(attr, Types::String)
        end
      end
    end
  end
end
