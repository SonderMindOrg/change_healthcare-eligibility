require 'change_healthcare/eligibility/version'

module ChangeHealthcare
  ##
  # Namespace for eligibility-related data + functions
  module Eligibility
    class Error < StandardError; end
  end
end

require 'change_healthcare/eligibility/swagger_client'
require 'change_healthcare/eligibility/wrapper'
require 'change_healthcare/eligibility/inspector'
