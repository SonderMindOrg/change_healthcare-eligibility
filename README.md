# ChangeHealthcare::Eligibility

This Ruby Gem provides the automatically generated swagger code for the [Change Healthcare Eligibility API](https://developers.changehealthcare.com/api/Eligibility/v3).
It also provides a wrapper that makes making requests a bit easier by caching and re-fetching authorization information.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'change_healthcare-eligibility'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install change_healthcare-eligibility

## Usage

The automatically generated API is located under the namespace `ChangeHealthcare::Eligibility::SwaggerClient`.
Most people should access it via the `ChangeHealthcare::Eligibility::Wrapper` class, which provides swagger caching.

That is used as so:

```ruby
wrapper = ChangeHealthcare::Eligibility::Wrapper.new(client_id: ENV['CH_CLIENT_ID'], client_secret: ENV['CH_CLIENT_SECRET'])
request = ChangeHealthcare::Eligibility::SwaggerClient::MedicalEligibility.new
request.control_number = some_control_number
request.subscriber = some_subscriber
end

response = wrapper.eligibility(request) # => ChangeHealthcare::Eligibility::SwaggerClient::Response

response.benefits_information.any? { |bi| bi.name == 'Deductible' }
```

You can also make a request using `tap`, which you might subjectively find nicer:

```ruby
request = ChangeHealthcare::Eligibility::SwaggerClient::MedicalEligibility.new.tap do |e|
  e.control_number = some_control_number
  e.subscriber = some_subscriber
end
```

Both of these have the same effect: you're just mutating attributes on a `request` object.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SonderMindOrg/change_healthcare-eligibility.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
