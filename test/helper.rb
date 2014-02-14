ENV['RACK_ENV'] = 'test'
require 'rubygems'

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
else
  require 'simplecov'
  SimpleCov.start 'Gem'
end

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'

Dir[File.expand_path('../support/*.rb', __FILE__)].each { |file| require file }
require File.expand_path '../../lib/geohashr', __FILE__
