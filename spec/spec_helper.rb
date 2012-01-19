require 'rspec'
require 'rspec/autorun'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'active_api'
require 'faker'
require 'rr'
require 'domain'

module SchemaHelper
  def reset_schema
    ActiveApi::Schema.versions = []
  end
end

RSpec.configure do |config|
  config.mock_with :rr
  config.include SchemaHelper
  config.before(:each) { reset_schema }
end