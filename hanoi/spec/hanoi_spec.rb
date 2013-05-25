require 'hanoi'

describe Game do
  let (:hanoi_game) { Game.new }
  it "initializes with three towers" do
    hanoi_game.towers.should == [[1,2,3], [], []]
  end
end