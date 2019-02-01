RSpec.describe Tictactoe::Player do

  context "#initialize" do
    it "raises an error when given zero parameters" do
      expect { Tictactoe::Player.new }.to raise_error(ArgumentError)
    end

    it "raises an error when given one parameter" do
      expect { Tictactoe::Player.new("Alice") }.to raise_error(ArgumentError)
    end

    it "doesn't raise an error when given two parameters" do
      expect { Tictactoe::Player.new("Alice", "X") }.to_not raise_error
    end
  end

  before do
    @player = Tictactoe::Player.new("Alice", "X") 
  end
  
  context "#name" do
    it "returns the name" do
      expect(@player.name).to eql "Alice"
    end

    it "raises an error when trying to change the name" do
      expect { @player = Tictactoe::Player.new("Alice", "X"); 
      @player.name = "Bob" }.to raise_error(NoMethodError)
    end
  end

  context "#marker" do
    it "returns the marker" do
      expect(@player.marker).to eql "X"
    end

    it "raises an error when trying to change the marker" do
      expect { @player = Tictactoe::Player.new("Alice", "X"); 
      @player.marker = "G" }.to raise_error(NoMethodError)    
    end
  end


end