module ChangeHealthcare
  module Eligibility
    module Types
      ##
      # Address type represented by swagger
      class Address < Base
        %i[address1 address2 city state postal_code].each do |attr|
          attribute? attr, Types::String
        end
      end
    end
  end
end
