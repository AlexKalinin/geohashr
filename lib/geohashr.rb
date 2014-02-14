lib_path = File.expand_path '..', __FILE__
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include? lib_path

module GeoHashr
  def [](geohash)
    GeoHashr::GeoHash.new(geohash)
  end
  alias :decode :[]
  module_function :[], :decode
end

require 'geohashr/version'
require 'geohashr/constants'
require 'geohashr/geohash'
