require File.expand_path '../helper', __FILE__

class TestGeohashr < Minitest::Test
  def test_truth
    refute Geohashr::VERSION.nil?
  end

  def test_decode
    {
      'c216ne' => [[45.3680419921875, -121.70654296875], [45.37353515625, -121.695556640625]],
      'C216Ne' => [[45.3680419921875, -121.70654296875], [45.37353515625, -121.695556640625]],
      'dqcw4'  => [[39.0234375, -76.552734375], [39.0673828125, -76.5087890625]],
      'DQCW4'  => [[39.0234375, -76.552734375], [39.0673828125, -76.5087890625]]
    }.each do |hash, latlng|
      assert_equal GeoHashr::GeoHash.new(hash).box, latlng
    end
  end

  # bcfguvyz   prxz
  # 89destwx   nqwy
  # 2367kmqr   jmtv
  # 0145hjnp   hksu
  #            57eg
  #            46df
  #            139c
  #            028b

  def test_x_y
    {
      '0' => [0,0],
      '1' => [1,0],
      '2' => [0,1],
      'x' => [7,2],
      'y' => [6,3],
      'z' => [7,3],

      '00' => [0,0],
      '01' => [0,1],
      '02' => [1,0],
      '0x' => [2,7],
      '0y' => [3,6],
      '0z' => [3,7],

      'zz' => [31,31],
      'zzz' => [255, 127],
      'zzzz' => [1023,1023],
      'zzzzz' => [8191,4095],
      'zzzzzz' => [32767,32767],
      'zzzzzzz' => [262143,131071],
      'zzzzzzzz' => [1048575,1048575],
      'zzzzzzzzz' => [8388607,4194303],
      'zzzzzzzzzz' => [33554431,33554431],
      'zzzzzzzzzzz' => [268435455,134217727],
      'zzzzzzzzzzzz' => [1073741823,1073741823]

    }.each do |hash, coord|
      gh = GeoHashr::GeoHash.new(hash)
      assert_equal [gh.x, gh.y], coord
    end
  end

  #def test_encode
  #  {
  #    [ 45.37,      -121.7      ] => 'c216ne',
  #    [ 47.6062095, -122.3320708] => 'c23nb62w20sth',
  #    [ 35.6894875,  139.6917064] => 'xn774c06kdtve',
  #    [-33.8671390,  151.2071140] => 'r3gx2f9tt5sne',
  #    [ 51.5001524,   -0.1262362] => 'gcpuvpk44kprq'
  #  }.each do |latlng, hash|
  #    assert_equal GeoHash.encode(latlng[0], latlng[1], hash.length), hash
  #  end
  #end

  #def test_neighbors
  #  {
  #    'dqcw5' => ["dqcw7", "dqctg", "dqcw4", "dqcwh", "dqcw6", "dqcwk", "dqctf", "dqctu"],
  #    'xn774c' => ['xn774f','xn774b','xn7751','xn7749','xn774d','xn7754','xn7750','xn7748'],
  #    'gcpuvpk' => ['gcpuvps','gcpuvph','gcpuvpm','gcpuvp7','gcpuvpe','gcpuvpt','gcpuvpj','gcpuvp5'],
  #    'c23nb62w' => ['c23nb62x','c23nb62t','c23nb62y','c23nb62q','c23nb62r','c23nb62z','c23nb62v','c23nb62m']
  #  }.each do |geohash, neighbors|
  #    assert_equal GeoHash.neighbors(geohash).sort, neighbors.sort
  #  end
  #end

  #def test_adjacent
  #  {
  #    ["dqcjq", :top]    => 'dqcjw',
  #    ["dqcjq", :bottom] => 'dqcjn',
  #    ["dqcjq", :left]   => 'dqcjm',
  #    ["dqcjq", :right]  => 'dqcjr'
  #  }.each do |position, hash|
  #    assert_equal GeoHash.adjacent(*position), hash
  #  end
  #end
end
