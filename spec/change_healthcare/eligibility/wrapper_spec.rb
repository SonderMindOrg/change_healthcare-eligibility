require 'spec_helper'

RSpec.describe ChangeHealthcare::Eligibility::Wrapper do
  describe 'authorization handling' do
    let(:client) { described_class.new(client_id: 'foo', client_secret: 'bar') }

    it 'sets the auth variable when status is good' do
      expect {
        client.send(:handle_auth, { 'access_token' => 'foo', 'expires_in' => 1000 }, '200')
      }.to change { client.instance_variable_get(:@auth_token) }.to(be_valid)
    end

    it 'raises the right error on 400' do
      expect {
        client.send(:handle_auth, {}, '400')
      }.to raise_error(ChangeHealthcare::Eligibility::Wrapper::BadAuthorizationError)
    end

    it 'raises the right error on 401 from change' do
      expect {
        client.send(:handle_auth, {}, '401')
      }.to raise_error(ChangeHealthcare::Eligibility::Wrapper::BadAuthRequestError)
    end

    it 'raises the right error on 500s from change' do
      expect {
        client.send(:handle_auth, {}, '500')
      }.to raise_error(ChangeHealthcare::Eligibility::Wrapper::UnknownAuthError)
    end
  end
end
