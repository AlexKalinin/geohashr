module GeoHashr
  class GeoHash
    attr_accessor :geohash, :x, :y, :box

    def self.[](geohash)
      new(geohash)
    end

    def initialize(geohash)
      @geohash = geohash
      decode
    end

    def decode
      @box = [[-90.0, 90.0], [-180.0, 180.0]]
      is_lng = 1
      positions = ['','']
      geohash.downcase.scan(/./) do |c|
        BITS.each do |mask|
          bit = (BASE32.index(c) & mask).zero? ? 1 : 0
          refine = box[is_lng]
          positions[is_lng] += (bit ^ 1).to_s
          refine[bit] = (refine[0] + refine[1]) / 2
          is_lng ^= 1
        end
      end
      @x = positions.first.to_i(2)
      @y = positions.last.to_i(2)
      @box = box.transpose
    end

    ##########
    ## Encode latitude and longitude into geohash
    #def self.encode(latitude, longitude, precision=12)
    #  latlng = [latitude, longitude]
    #  points = [[-90.0, 90.0], [-180.0, 180.0]]
    #  is_lng = 1
    #  (0...precision).map {
    #    ch = 0
    #    5.times do |bit|
    #      mid = (points[is_lng][0] + points[is_lng][1]) / 2
    #      points[is_lng][latlng[is_lng] > mid ? 0 : 1] = mid
    #      ch |=  BITS[bit] if latlng[is_lng] > mid
    #      is_lng ^= 1
    #    end
    #    BASE32[ch,1]
    #  }.join
    #end

    #########
    # Calculate neighbors (8 adjacents) geohash
    def neighbors
      [[:top, :right], [:right, :bottom], [:bottom, :left], [:left, :top]].map{ |dirs|
        point = adjacent(dirs[0])
        [point, adjacent(dirs[1], point)]
      }.flatten
    end

    def adjacent(dir, source_hash=geohash)
      source_hash = source_hash.to_s
      base, lastChr = source_hash[0..-2], source_hash[-1,1]
      type = (source_hash.length % 2)==1 ? :odd : :even
      p [source_hash, dir, type, base, lastChr]
      if BORDERS[dir][type].include?(lastChr)
        p [:before, dir, base]
        base = adjacent(dir, base)
      end

      GeoHash.new(base + BASE32[NEIGHBORS[dir][type].index(lastChr),1])
    end

    ##########
    ## Calculate adjacents geohash
    #def self.adjacent(geohash, dir)
    #  base, lastChr = geohash[0..-2], geohash[-1,1]
    #  type = (geohash.length % 2)==1 ? :odd : :even
    #  if BORDERS[dir][type].include?(lastChr)
    #    base = adjacent(base, dir)
    #  end

    #  GeoHash.new(base + BASE32[NEIGHBORS[dir][type].index(lastChr),1])
    #end

    def to_s
      geohash
    end

    def inspect
      "#<GeoHash:#{geohash} #{x},#{y} #{box}>"
    end
  end
end
