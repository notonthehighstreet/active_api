# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{active_api}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Dean"]
  s.date = %q{2009-07-05}
  s.email = %q{jeff@zilkey.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/active_api.rb",
     "lib/active_api/builder.rb",
     "lib/active_api/collection.rb",
     "lib/active_api/complex_type.rb",
     "lib/active_api/definition.rb",
     "lib/active_api/field.rb",
     "lib/active_api/has_definition.rb",
     "lib/active_api/schema.rb",
     "lib/active_api/simple_type.rb",
     "spec/active_api/complex_type_spec.rb",
     "spec/active_api/definition_spec.rb",
     "spec/active_api/field_spec.rb",
     "spec/active_api/schema_spec.rb",
     "spec/active_api/simple_type_spec.rb",
     "spec/api_spec.rb",
     "spec/domain.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/zilkey/active_api}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{An api layer for ruby}
  s.test_files = [
    "spec/active_api/complex_type_spec.rb",
     "spec/active_api/definition_spec.rb",
     "spec/active_api/field_spec.rb",
     "spec/active_api/schema_spec.rb",
     "spec/active_api/simple_type_spec.rb",
     "spec/api_spec.rb",
     "spec/domain.rb",
     "spec/spec_helper.rb"
  ]

  s.add_dependency('nokogiri', '>= 1.3.2')
  s.add_dependency('activesupport', '>= 2.3.2')

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
