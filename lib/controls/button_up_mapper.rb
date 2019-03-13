module Controls
  class ButtonUpMapper
    attr_reader :context

    def initialize(context)
      @context = context
    end

    def trigger(signal:)
      case signal
      when Gosu::KB_LEFT, Gosu::KB_RIGHT, Gosu::KB_UP, Gosu::KB_DOWN
        move_cursor_command.call(signal)
      when Gosu::KB_W, Gosu::KB_S, Gosu::KB_A, Gosu::KB_D
        move_map_command.call(signal)
      else
        empty_command.call
      end
    end

    private

    def move_cursor_command
      @move_cursor_command ||= MoveCursorCommand.new(context.cursor)
    end

    def move_map_command
      @move_map_command ||= MoveMapCommand.new(context.map)
    end

    def empty_command
      @empty_command ||= -> {}
    end
  end
end