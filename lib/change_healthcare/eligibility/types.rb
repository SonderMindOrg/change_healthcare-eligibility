require 'dry-struct'

module ChangeHealthcare
  module Eligibility
    ##
    # Container namespace for data types.
    module Types
      include Dry.Types()

      autoload(:Base, 'change_healthcare/eligibility/types/base')
      autoload(:Address, 'change_healthcare/eligibility/types/address')
      autoload(:AdditionalIdentification, 'change_healthcare/eligibility/types/additional_identification')
    end
  end
end
