# frozen_string_literal: true

require 'singleton'

class World < GameObject
  include Dimensions
  include Singleton

  attr_reader :slates, :actors

  def initialize
    @slates = Terrain::SlateMapGenerator.call(self, TILE_COUNT, TILE_COUNT)
    @actors = Actors::Initializer.new(self).call
  end

  def step
    actors.each(&:step)
  end

  def step_back
    actors.each(&:step_back)
  end

  private

  def to_h
    super.merge(
      slates: slates
    )
  end
end