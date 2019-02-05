module Tictactoe
  class Player
    attr_reader :name, :marker

    def initialize(input)
      @name = input[:name]
      @marker = input[:marker]
    end
  end
end