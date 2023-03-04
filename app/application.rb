# frozen_string_literal: true

# Solution Kata Secret Handshake
class SecretHandshake
  COMMANDS = %w[wink double-blink close-your-eyes jump].freeze

  def initialize(number)
    @number = number
  end

  def commands
    return [] unless @number.is_a?(Integer)

    binary_string = @number.to_s(2)
    output = []
    binary_string.chars.reverse.each_with_index do |binary, index|
      if index >= COMMANDS.length
        output.reverse!
        break
      end
      output << COMMANDS[index].tr('-', ' ') if binary == '1'
    end
    output
  end
end
