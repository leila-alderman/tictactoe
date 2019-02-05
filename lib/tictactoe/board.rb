module Tictactoe
  class Board
    attr_reader :state

    def initialize
      @state = Array.new(3) { Array.new(3) { Square.new } }
    end
  end
end