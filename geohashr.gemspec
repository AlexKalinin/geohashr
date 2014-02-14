# -*- encoding: utf-8 -*-
# stub: geohashr 0.1.0.20140214080544 ruby lib

Gem::Specification.new do |s|
  s.name = "geohashr"
  s.version = "0.1.0.20140214080544"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["JohnnyT"]
  s.date = "2014-02-14"
  s.description = "GeoHash - encode, decode, neighbors"
  s.email = ["ubergeek3141@gmail.com"]
  s.extra_rdoc_files = ["CHANGELOG.md", "CONTRIBUTING.md", "LICENSE.txt", "Manifest.txt", "README.md"]
  s.files = [".coveralls.yml", ".gemtest", ".gitignore", ".travis.yml", "CHANGELOG.md", "CONTRIBUTING.md", "LICENSE.txt", "Manifest.txt", "README.md", "Rakefile", "geohashr.gemspec", "lib/geohashr.rb", "lib/geohashr/constants.rb", "lib/geohashr/geohash.rb", "lib/geohashr/version.rb", "test/helper.rb", "test/test_geohashr.rb"]
  s.homepage = "https://github.com/johnnyt/geohashr"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubyforge_project = "geohashr"
  s.rubygems_version = "2.2.1"
  s.summary = "GeoHash - encode, decode, neighbors"
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
