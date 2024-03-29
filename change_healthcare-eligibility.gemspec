lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'change_healthcare/eligibility/version'

Gem::Specification.new do |spec|
  spec.name          = 'change_healthcare-eligibility'
  spec.version       = ChangeHealthcare::Eligibility::VERSION
  spec.authors       = ['Anthony Super']
  spec.email         = ['asuper@sondermind.com']

  spec.required_ruby_version = '>= 2.6.0'

  spec.summary       = "Unofficial gem for interacting with Change Healthcare's Eligibility API"
  spec.description   = 'Verify benefits in real-time!'
  spec.homepage      = 'https://github.com/SonderMindOrg/change_healthcare-eligibility'
  spec.license       = 'MIT'

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SonderMindOrg/change_healthcare-eligibility'
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # needed for autogen swagged client
  spec.add_dependency 'addressable', '~> 2.5'
  spec.add_dependency 'typhoeus', '~> 1.4'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov'

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'pry'
end
