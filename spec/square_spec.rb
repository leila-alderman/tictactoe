RSpec.describe Tictactoe::Square do

  # Before running the below tests, create an object
  # that can be used throughout these tests
  before do 
    @square = Tictactoe::Square.new
  end

  context "#initialize" do
    it "initializes with a default value of ' '" do
      expect(@square.value).to eql ' '
    end
  end

  context "#value" do
    it "can be changed to 'X'" do
      @square.value = 'X'
      expect(@square.value).to eql 'X'
    end

    it "can be changed to 'O'" do
      @square.value = 'O'
      expect(@square.value).to eql 'O'
    end
  end

end