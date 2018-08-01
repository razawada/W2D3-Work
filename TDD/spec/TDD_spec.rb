require 'rspec'
require 'TDD'

describe "#my_uniq" do
  it "returns an array" do
    expect([1, 3, 2].my_uniq.class).to be(Array)
  end

  it "all uniq elements remain" do
    expect([1, 3, 2].my_uniq).to match_array([1, 3, 2])
  end

  it "ordered similarly to original" do
    expect([1, 3, 2].my_uniq).to eq([1, 3, 2])
  end

  it "gets rid of duplicates" do
    expect([1, 1, 1, 2, 2, 3].my_uniq).to match([1,2,3])
  end

  it "gets rid of duplicates" do
    expect([1, 1, 1, 2, 2, 3].my_uniq).to eq([1,2,3])
  end

  it "raises error if argument is not an array" do
    expect{ "I love dogs".my_uniq }.to raise_error
  end

end

describe "#two_sum" do
  it "returns an array of 2 element arrays" do
    expect([-1, 0, 2, -2, 1].two_sum[0].length).to eq(2)
  end

  it "returns pairs that add to 0" do
    expect([-1, 1].two_sum).to eq([[0, 1]])
  end

  it "gives pairs in correct order" do
    expect([-1, 0 , 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
  end

end

describe "#my_transpose" do
  it "works with an array of length 1" do
    expect(my_transpose([[1]])).to eq([[1]])
  end
  it "returns an empty array if given an empty array" do
    expect(my_transpose([])).to eq([])
  end

  it "works with large arrays" do
    array = [[0, 1, 2, 3,], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15]]
    ans = [[0, 4, 8 , 12], [1, 5, 9, 13], [2, 6, 10, 14], [3, 7, 11, 15]]
    expect(my_transpose(array)).to eq(ans)

  end

  it "places all elements of the first row as the first elements of the resulting new rows" do
    array = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
    ans = [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
    expect(my_transpose(array)).to eq(ans)
  end
end

describe "#stock_picker" do
  it "returns nil if receiver.length < 2" do
    prices = [100]
    expect(prices.stock_picker).to eq(nil)
  end

  it "returns and array of two elements" do
    prices = [100, 200, 300, 1000, 100]
    expect(prices.stock_picker.length).to eq(2)
  end

  it "buys before it sells a stock (index1 < index2)" do
    prices = [100, 75, 50, 25, 12, 99]
    expect(prices.stock_picker[1] > prices.stock_picker[0]).to be(true)
  end

  it "returns nil if #stock_picker if price only decreases" do
    prices = [100, 75, 50, 25, 12]
    expect(prices.stock_picker).to be(nil)
  end

end
