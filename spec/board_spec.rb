RSpec.describe Tictactoe::Board do
  
  before do
    @board = Tictactoe::Board.new
  end

  context "#initialize" do
    it "has three rows" do
      expect(@board.state.length).to eql 3
    end

    it "has three elements in each row" do
      @board.state.each do |row|
        expect(row.length).to eql 3
      end
    end

    it "has default elements of Square instances" do
      @board.state.each do |row|
        row.each do |element|
          expect(element.value).to eql ' '
        end
      end
    end 
  end

end