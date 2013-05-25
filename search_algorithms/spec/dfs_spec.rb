require 'rspec'
require 'dfs'

describe TreeNode do
  subject(:treenode) { TreeNode.new(0) }

  describe "#value" do
    its(:value) { should == 0 }
  end

  describe "#adopt" do
    let(:child) { TreeNode.new(1) }
    let(:targetgrandchild) { TreeNode.new(7) }
    it "can adopt a child" do
      treenode.adopt(child)
      treenode.children.should include child
    end
  end
  describe "#dfs" do
    let(:targetgrandchild) { TreeNode.new(7) }
    before do
      child1 = TreeNode.new(1)
      child2 = TreeNode.new(2)
      child3 = TreeNode.new(3)
      grandchild1 = TreeNode.new(4)
      grandchild2 = TreeNode.new(5)
      grandchild3 = TreeNode.new(6)
      grandchild5 = TreeNode.new(8)
      treenode.adopt(child1)
      treenode.adopt(child2)
      treenode.adopt(child3)
      child1.adopt(grandchild1)
      child1.adopt(grandchild2)
      child2.adopt(grandchild3)
      child2.adopt(targetgrandchild)
      child3.adopt(grandchild5)
    end
    it "can perform a search" do
      subject.dfs(7).should == targetgrandchild
    end
  end
end
