# -*- encoding: utf-8 -*-
# stub: geohashr 0.borked.20140214075417 ruby lib

Gem::Specification.new do |s|
  s.name = "geohashr"
  s.version = "0.borked.20140214075417"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["JohnnyT"]
  s.date = "2014-02-14"
  s.description = ""
  s.email = ["ubergeek3141@gmail.com"]
  s.extra_rdoc_files = ["CHANGELOG.md", "CONTRIBUTING.md", "LICENSE.md", "Manifest.txt", "README.md"]
  s.files = [".coveralls.yml", ".gemtest", ".gitignore", ".travis.yml", "CHANGELOG.md", "CONTRIBUTING.md", "Gemfile.ci", "LICENSE.md", "Manifest.txt", "README.md", "Rakefile", "lib/mem_model.rb", "lib/mem_model/base.rb", "lib/mem_model/concern.rb", "lib/mem_model/errors.rb", "lib/mem_model/guid.rb", "lib/mem_model/model_name.rb", "lib/mem_model/validations.rb", "lib/mem_model/version.rb", "mem_model.gemspec", "test/helper.rb", "test/mem_model/test_active_model.rb", "test/mem_model/test_base.rb", "test/mem_model/test_guid.rb", "test/mem_model/test_rooted_base.rb", "test/mem_model/test_validations.rb", "test/mem_model/test_version.rb", "test/support/active_model_lint.rb", "test/test_geohashr.rb"]
  s.homepage = "[![Version][Version image]][Version]"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubyforge_project = "geohashr"
  s.rubygems_version = "2.2.1"
  s.summary = ""
  s.test_files = ["test/test_geohashr.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.2"])
      s.add_development_dependency(%q<coveralls>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.8"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.2"])
      s.add_dependency(%q<coveralls>, ["~> 1.0"])
      s.add_dependency(%q<hoe>, ["~> 3.8"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.2"])
    s.add_dependency(%q<coveralls>, ["~> 1.0"])
    s.add_dependency(%q<hoe>, ["~> 3.8"])
  end
end
