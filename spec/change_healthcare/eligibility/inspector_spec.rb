require 'spec_helper'

##
# This uses an "axiom style" testing strategy: it makes sure that our assumptions hold on a variety of test cases,
# without constructing specific ones.
RSpec.describe ChangeHealthcare::Eligibility::Inspector do
  ##
  # Axioms that *always hold true* for every single dir.
  describe 'axioms' do
    Dir['spec/example_docs/*'].each do |doc|
      context "with the '#{doc}' example" do
        before(:all) do # rubocop:disable RSpec/BeforeAfterAll
          @example_resp = ChangeHealthcare::Eligibility::SwaggerClient::Response.new.build_from_hash(
            JSON.parse(IO.binread(doc), symbolize_names: true)
          )
        end

        subject(:inspector) { described_class.new(@example_resp) } # rubocop:disable RSpec/InstanceVariable

        describe '.active_coverage_information' do
          subject { inspector.active_coverage_information }

          it { should all(have_attributes(name: 'Active Coverage')) }
          it { should all be_a(ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation) }
        end

        describe '.deductible_records' do
          subject { inspector.deductible_records }

          it { should be_a(Array) }
          it { should all have_attributes(name: 'Deductible') }
          it { should all be_a(ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation) }
        end

        describe '.copayment_records' do
          subject { inspector.copayment_records }

          it { should be_a(Array) }
          it { should all have_attributes(name: 'Co-Payment') }
          it { should all be_a(ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation) }
        end

        describe '.coinsurance_records' do
          subject { inspector.coinsurance_records }

          it { should be_a(Array) }
          it { should all have_attributes(name: 'Co-Insurance') }
          it { should all be_a(ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation) }
        end

        describe '.benefits_information' do
          subject { inspector.benefits_information }

          specify { expect { subject }.not_to raise_error }
          it { should all be_a(ChangeHealthcare::Eligibility::SwaggerClient::BenefitsInformation) }
        end
      end
    end
  end
end
