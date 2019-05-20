# frozen_string_literal: true

module Controls
  class MouseMoveCursorCommand
    attr_reader :cursor

    def initialize(cursor)
      @cursor = cursor
    end

    def call(x, y)
      cursor.move_to(x, y)
    end
  end
end