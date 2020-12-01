require 'spec_helper'

RSpec.describe ChangeHealthcare::Eligibility::SwaggerClient::Response do
  describe 'parsing example values' do
    Dir['spec/example_docs/*'].each do |path|
      context "with the '#{File.basename(path)}' document" do
        it 'parses without error' do
          expect {
            described_class.new.build_from_hash(
              JSON.parse(IO.binread(path))
            )
          }.not_to raise_error
        end
      end
    end
  end
end
