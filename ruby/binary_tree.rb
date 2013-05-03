class Tree
  attr_accessor :left, :right, :value

  def initialize(l, r, v)
    @left = l
    @right = r
    @value = v
  end

end


bt = Tree.new(Tree.new(Tree.new(Tree.new(nil, nil, 4), nil, 6), nil, 8), Tree.new(nil, Tree.new(nil, Tree.new(nil, nil, 16), 14), 12), 10)

def tree_depth(tree)
  if tree.nil?
    return 0
  else
    left = tree_depth(tree.left)
    puts "left: #{left}"
    right = tree_depth(tree.right)
    left > right ? (left + 1) : (right + 1)
  end
end
