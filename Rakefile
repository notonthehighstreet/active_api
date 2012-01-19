require 'rubygems'
require 'rake'
require 'rspec'
require 'rspec/core/rake_task'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "active_api"
    gem.summary = %Q{An api layer for ruby}
    gem.email = "jeff@zilkey.com"
    gem.homepage = "http://github.com/zilkey/active_api"
    gem.authors = ["Jeff Dean"]
    gem.add_dependency('nokogiri', '>= 1.3.2')
    gem.add_dependency('activesupport', '>= 2.3.2')
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.rspec_opts = "-Ilib"
  spec.pattern = 'spec/**/*_spec.rb'
end

task :default => :spec