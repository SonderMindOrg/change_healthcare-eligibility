require 'rspec/expectations'

##
# Makes sure that a JSON value parses to some class
class ParseValueMatcher
  include RSpec::Matchers::Composable
  def initialize(value)
    @value = value
    @match_parsed = nil
  end

  def matches?(actual)
    parsed_correctly?(actual.call(@value))
  rescue Dry::Struct::Error
    false
  end

  def into(matcher)
    tap { @match_parsed = matcher }
  end

  def description
    d = []
    d << "parse value #{@value.inspect}"
    d << "into (#{description_of(@match_parsed)})" if @match_parsed
    d.join(' ')
  end

  private

  def parsed_correctly?(value)
    return true unless @matched_parsed

    values_match?(@match_parsed, value)
  end
end

##
# Module that lets you get parse_value syntax
module WithParseValueMatcher
  def parse_value(value)
    ParseValueMatcher.new(value)
  end
end

RSpec.configure do |config|
  config.include(WithParseValueMatcher)
end
