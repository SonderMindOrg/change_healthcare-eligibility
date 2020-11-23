require 'change_healthcare/eligibility/version'

module ChangeHealthcare
  ##
  # Namespace for eligibility-related data + functions
  module Eligibility
    class Error < StandardError; end

    autoload(:Types, 'change_healthcare/eligibility/types')
  end
end
