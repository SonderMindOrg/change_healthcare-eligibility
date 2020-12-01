require 'json'
require 'net/http'

module ChangeHealthcare
  module Eligibility
    ##
    # Wrapper module, wraps the auto-generated swagger code
    # in a slightly nicer-to-use format.
    #
    # This is a *semi-stateful*, *thread-safe* wrapper.
    # It will get auth tokens for you when needed.
    class Wrapper
      def initialize(client_id:, client_secret:)
        @client_id = client_id
        @client_secret = client_secret
        @api = SwaggerClient::EligibilityApi.new
        # fake auth token that is expired
        @auth_token = AuthToken.new('', Time.at(0))
        @mutex = Mutex.new
      end

      ##
      # Check eligibility.
      #
      # Will refresh auth token if needed (holding a lock while it does so for thread-safety).
      #
      # @param request [ChangeHealthcare::Eligibility::SwaggerClient::MedicalEligibility] the request to send
      # @param opts [Hash] client options
      #
      # @raise [ChangeHealthcare::Eligibility::Wrapper::BadAuthRequestError] if we couldn't auth due to a bug
      # @raise [ChangeHealthcare::Eligibility::Wrapper::BadAuthorizationError] if we couldn't auth due to bad creds
      # @raise [ChangeHealthcare::Eligibility::Wrapper::UnknownAuthError] if something really weird happens
      #
      # @return [ChangeHealthcare::Eligibility::SwaggerClient::Response] the response from change
      def eligibility(request, opts = {})
        @api.eligibility(auth_token.auth, request, opts)
      end

      ##
      # Check health of the API
      #
      # @return [ChangeHealthcare::Eligibility::SwaggerClient::HealthCheck]
      def health_check
        @api.health_check_using_get(auth_token.auth)
      end

      ##
      # Thrown when your authentication credentials are invalid
      class BadAuthorizationError < Error; end
      ##
      # Thrown when the authentication request is in some way malformed.
      # Probably indicates a gem bug.
      class BadAuthRequestError < Error; end
      ##
      # Thrown when authentication goes wrong for some reason.
      # Probably either a gem bug, or a bug in change healthcare.
      class UnknownAuthError < Error; end

      ##
      # Obtain a valid authentication token.
      # This method *may* request a new token if the in-use token is expired.
      # It will do this in a thread-safe manner.
      #
      # @raise [ChangeHealthcare::Eligibility::Wrapper::BadAuthRequestError] if we couldn't auth due to a bug
      # @raise [ChangeHealthcare::Eligibility::Wrapper::BadAuthorizationError] if we couldn't auth due to bad creds
      # @raise [ChangeHealthcare::Eligibility::Wrapper::UnknownAuthError] if something really weird happens
      def auth_token
        @mutex.synchronize do
          fetch_new_token! unless @auth_token.valid?

          @auth_token
        end
      end

      ##
      # Struct used to store auth tokens so we don't need to fetch one every request.
      AuthToken = Struct.new(:token, :expires_at) do
        ##
        # Is this token still usable?
        def valid?
          expires_at > (Time.new - 20)
        end

        ##
        # The actual auth header to pass in to things
        def auth
          "Bearer #{token}"
        end
      end

      private

      def fetch_new_token!
        path = "https://#{api_config.host}/apip/auth/v2/token"
        uri = URI(path)
        res = Net::HTTP.post_form(
          uri,
          'client_id' => @client_id,
          'client_secret' => @client_secret,
          'grant_type' => 'client_credentials'
        )
        body = JSON.parse(res.body)
        handle_auth(body, res.code)
      end

      def handle_auth(body, code)
        case code
        when '200'
          @auth_token = AuthToken.new(body['access_token'], Time.new + body['expires_in'])
        when '400'
          raise BadAuthorizationError, "bad authorization request (#{body['error_description']})"
        when '401'
          raise BadAuthRequestError, "bad auth request: (#{body['error_description']})"
        else
          raise UnknownAuthError, "internal problem (auth request had status #{code})"
        end
      end

      def api_config
        @api.api_client.config
      end
    end
  end
end
