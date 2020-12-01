require 'spec_helper'

RSpec.describe ChangeHealthcare::Eligibility::SwaggerClient::Response do
  describe 'parsing example values' do
    Dir['spec/example_docs/*'].each do |path|
      context "with the '#{File.basename(path)}' document" do
        let(:parsed_response) do
          described_class.new.build_from_hash(
            JSON.parse(IO.binread(path), symbolize_names: true)
          )
        end

        it 'parses without error' do
          expect {
            parsed_response
          }.not_to raise_error
        end

        it 'parses into something useful' do
          expect(parsed_response.to_hash).not_to be_empty
        end
      end
    end
  end
end
