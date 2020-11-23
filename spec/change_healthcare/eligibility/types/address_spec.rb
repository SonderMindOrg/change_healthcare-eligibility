require 'spec_helper'

RSpec.describe ChangeHealthcare::Eligibility::Types::Address do
  describe 'parsing' do
    subject { described_class }

    it { should parse_value({ 'address1' => '1234 something dr' }) }

    it do
      should parse_value({ 'address1' => '1234 something dr', 'postalCode' => '90210' }).into(have_attributes(postal_code: '90210'))
    end
  end

  describe '#to_change_request' do
    context 'with a complicated case' do
      subject do
        described_class.new(address1: '123', postal_code: '123').to_change_request
      end

      it { should include('postalCode' => '123') }
      it { should include('address1' => '123') }
    end
  end
end
