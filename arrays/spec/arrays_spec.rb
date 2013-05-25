require 'arrays'

describe "#my_uniq" do
  it "gets rid of duplicates" do
    [1,1,1,2].uniq.should == [1,2]
  end

  it "returns the same array if there are no dups" do
    [1,2,3].uniq.should == [1,2,3]
  end
end

describe "#two_sum" do
  its "finds the indices of element pairs that sum to 0" do
    [1,3,1,-3].two_sum.should == [[1,3], [3,1]]
  end
end


describe "#my_transpose" do
  it "transposes rows to columns" do
      [[1,2,3],
      ["a", "b", "c"],
      ["one", "two", "three"]].my_transpose.should == [
      [1, "a", "one"],
      [2, "b", "two"],
      [3, "c", "three"]]
  end

  it "transposes columns to rows" do
    [[1, "a", "one"],
    [2, "b", "two"],
    [3, "c", "three"]].my_transpose.should == [
    [1,2,3],
    ["a", "b", "c"],
    ["one", "two", "three"]]
  end
end

describe "#stock_picker" do
  it "returns the indices of the most profitable buy and sell days" do
    stock_picker([20, 30, 10, 40, 50, 60, 20]).should == [2, 5]
  end

  it "accounts for chonology" do
    stock_picker([200, 20, 30, 10, 40]).should_not == [3, 0]
  end
end