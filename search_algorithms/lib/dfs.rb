class TreeNode
  attr_reader :children, :value

  def initialize(value)
    @value = value
    @children = []
    @parent = nil
  end

  def adopt(child)
    @children << child
    child.parent = self
  end

  def disown(child)
    @children.delete(child)
    child.parent = nil
  end

  def dfs(target)
    if @value == target
      return self
    elsif @children.empty?
      return nil
    else
      @children.each do |child|
        result = child.dfs(target)
        return result unless result.nil?
      end
    end
    nil
  end

  protected
  attr_accessor :parent
end