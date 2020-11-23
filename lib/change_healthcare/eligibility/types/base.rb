require 'dry-struct'

module ChangeHealthcare
  module Eligibility
    module Types
      ##
      # Base for all struct-like datatypes.
      class Base < Dry::Struct
        transform_keys do |key|
          if key.is_a?(String)
            key.gsub(/[A-Z]/) { |l| "_#{l}" }.to_sym
          else
            key
          end
        end

        def to_change_request
          to_h.map { |key, value|
            nkey = key.to_s.gsub(/_[a-z]/) { |l| l[1..].upcase }
            nval =
              if value.respond_to?(:to_change_request)
                value.to_change_request
              else
                value
              end
            [nkey, nval]
          }.to_h
        end
      end
    end
  end
end
