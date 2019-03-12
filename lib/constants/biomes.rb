module Biomes
  Biome = Struct.new(:name, :r_value)
  SNOW       = Biome.new('snow', nil)
  ROCKS      = Biome.new('rocks', nil)
  MOUNTAIN   = Biome.new('mountain', nil)
  DESERT     = Biome.new('desert', 10)
  GRASSLAND  = Biome.new('grassland', 1)
  VALLEY     = Biome.new('valley', 1)
  COASTLINE  = Biome.new('coastline', 10)
  SHOAL      = Biome.new('shoal', nil)
  WATER      = Biome.new('water', nil)
  DEEP_WATER = Biome.new('deep_water', nil)
end
