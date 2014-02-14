# -*- ruby -*-

require './lib/geohashr/version'
require 'hoe' rescue LoadError

if defined? Hoe

[ :debug, :gemcutter, :newb, :publish, :signing ].each do |plugin|
  Hoe.plugins.delete plugin
end

Hoe.plugin :git
Hoe.plugin :gemspec

Hoe.spec 'geohashr' do
  developer     'JohnnyT', 'ubergeek3141@gmail.com'
  license       'MIT'

  self.summary       = 'GeoHash - encode, decode, neighbors'
  self.description   = 'GeoHash - encode, decode, neighbors'
  self.urls          = ['https://github.com/johnnyt/geohashr']
  self.history_file  = 'CHANGELOG.md'
  self.readme_file   = 'README.md'
  self.testlib       = :minitest

  dependency 'minitest',  '~> 5.2', :development
  dependency 'coveralls', '~> 1.0', :development
end

desc '- Changelog, manifest, new spec'
task :prepare => %w[ changelog git:manifest gem:spec ] do
  puts "Now update the CHANGELOG, then run\n\nrake commit\n"
end


desc '- Create commit, push to origin, tag'
task :commit do
  files = 'CHANGELOG.md lib/geohashr/version.rb geohashr.gemspec'
  puts "== Adding #{files}"
  `git add #{files}`
  puts '== Creating commit'
  `git commit -m ':checkered_flag: Release #{Geohashr::VERSION}'`
  puts '== Pushing master to origin'
  `git push origin master`
  puts '== Running rake git:tag'
  Rake::Task['git:tag'].invoke
  puts "Now run\n\nrake gem && gem push pkg/geohashr-#{Geohashr::VERSION}.gem\n"
end

desc 'Prepend new changes to CHANGELOG'
task :changelog do
  spec = Gem::Specification::load('geohashr.gemspec')

  changes_io = StringIO.new
  $stdout = changes_io
  ENV['VERSION'] = Geohashr::VERSION
  Rake::Task['git:changelog'].invoke
  $stdout = STDOUT
  changes = changes_io.string.gsub('===', '###')

  current = File.read('CHANGELOG.md')
  File.write('CHANGELOG.md', [changes, current].join)

  puts "Prepended these new changes:\n\n#{changes}"
end

desc 'Console'
task :console do
  sh "irb -rubygems -r ./lib/geohashr"
end

end # has_hoe

desc 'Setup your local dev environment'
task :setup do
  spec = Gem::Specification::load('geohashr.gemspec')
  sh "gem install #{spec.dependencies.map{|d| d.name}.join(' ')}"
  sh "rake install_plugins"
end

# vim: syntax=ruby
