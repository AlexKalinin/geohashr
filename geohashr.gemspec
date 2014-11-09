# -*- encoding: utf-8 -*-
# stub: geohashr 0.2.0.20141108200404 ruby lib

Gem::Specification.new do |s|
  s.name = "geohashr"
  s.version = "0.2.0.20141108200404"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["JohnnyT"]
  s.date = "2014-11-09"
  s.description = "GeoHash - encode, decode, neighbors"
  s.email = ["ubergeek3141@gmail.com"]
  s.extra_rdoc_files = ["CHANGELOG.md", "CONTRIBUTING.md", "LICENSE.txt", "Manifest.txt", "README.md"]
  s.files = [".coveralls.yml", ".gemtest", ".gitignore", ".travis.yml", "CHANGELOG.md", "CONTRIBUTING.md", "LICENSE.txt", "Manifest.txt", "README.md", "Rakefile", "geohashr.gemspec", "lib/geohashr.rb", "lib/geohashr/constants.rb", "lib/geohashr/geohash.rb", "lib/geohashr/version.rb", "test/helper.rb", "test/test_geohashr.rb"]
  s.homepage = "https://github.com/johnnyt/geohashr"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubygems_version = "2.4.0"
  s.summary = "GeoHash - encode, decode, neighbors"
  s.test_files = ["test/test_geohashr.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.2"])
      s.add_development_dependency(%q<coveralls>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.12"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.2"])
      s.add_dependency(%q<coveralls>, ["~> 1.0"])
      s.add_dependency(%q<hoe>, ["~> 3.12"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.2"])
    s.add_dependency(%q<coveralls>, ["~> 1.0"])
    s.add_dependency(%q<hoe>, ["~> 3.12"])
  end
end
