ENV['RACK_ENV'] = 'test'
require 'rubygems'

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
else
  require 'simplecov'
  SimpleCov.start
end

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

Dir[File.expand_path('../support/*.rb', __FILE__)].each { |file| require file }
require File.expand_path '../../lib/geohashr', __FILE__
