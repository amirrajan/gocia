# frozen_string_literal: true

require 'dry-struct'

module ChangeTracking
  class Changeset < Dry::Struct
    attribute :tick, Types::Integer
    attribute :changes, Types::Array.of(Types::Instance(Change))
  end
end
