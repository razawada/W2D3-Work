require 'rspec'
require 'towers'


describe TowersOfHanoi do
  subject(:game1){TowersOfHanoi.new}

  it "#initalize with a board array" do
    expect(game1.board).to be_a(Array)
  end

  it "#initialize a 2-D board" do
    expect(game1.board.all?{ |el| el.class == Array }).to eq(true)
  end

  it "#initialize a board with 3 pegs" do
    expect(game1.board.length).to eq(3)
  end

  it "#initialize with all disks on one peg" do
    expect(game1.board.select{|arr| arr.empty?}.length).to eq(2)
  end

  it "#initialize with smaller disks on larger disks" do
    expect(game1.board[0].reverse).to eq(game1.board[0].sort)
  end

  describe "#get_input" do
    it "prompts player for move ex. '1,2'"

    it "#parse input"

    it "#check_valid? is called on input"

  end

  describe "#check_valid?" do
    it "raises error if the input is not '0-2' for either element of input" do
      expect(check_valid?([3, 1])).to raise_error
    end

    it "returns false if move puts larger disk on smaller disk" do
      game1.board = [[3],[2],[1]]
      expect(check_valid?([0, 2])).to eq(false)
    end

  end

  describe "#parse_input" do
    it "returns an array"

    it "has two elements"
  end

  describe "#move_disk" do
    it "takes a selected disk off a peg"

    it "places a selected disk on a new peg"
  end

  describe "#won?" do
    it "checks that the original peg is empty"

    it "checks if all other disks are on one single peg"
  end
end
