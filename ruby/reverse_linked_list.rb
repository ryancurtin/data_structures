class LinkedList
  attr_accessor :nodes

  def initialize(nodes=[])
    @nodes = nodes
  end

  def add_node(node)
    @nodes << node
  end

end

class Node
  attr_accessor :val, :n

  def initialize(val, n)
    @val = val
    @n = n
  end

end

# Recursively build a linked list of a given length
# Increments starting value by 1
# Need to build separate nodes like iterative definition
def build_recursive_linked_list(l, i)
  return nil if l <= 0  
  node = Node.new(i, build_recursive_linked_list((l-1), i+1))
  l -= 1

  node
end

# Iteratively builds a linked list, value incremented by 1
def build_iterative_linked_list(len)
  ll = LinkedList.new
  node = Node.new(0, nil)

  (1..len).each do |val|
    node = Node.new(val, node)
    ll.add_node(node)
    val += 1
  end

  ll.head = node
  ll
end

def reverse_linked_list_iterative(head)
  prev = nil
  curr = head
  while curr != nil
    n = curr.n
    curr.n = prev
    prev = curr
    curr = n
  end

end

def reverse_linked_list_recursive(ll)
  return nil if ll.nil?
  return ll if ll.n.nil?

  second = ll.n
  ll.n = nil

  reverse = reverse_linked_list_recursive(second)
  second.n = ll

  return reverse
end

ll = build_recursive_linked_list(5, 0)
reverse_linked_list_recursive(ll)
