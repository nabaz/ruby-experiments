class Node
  attr_accessor :value, :next
  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail

  def add(val)
    if (@head.nil?)
      @head = Node.new(val, nil)
      @tail = @head
    else
      @tail.next = Node.new(val, nil)
      @tail = @tail.next
    end
  end

  def reverse(list)
    return nil if list.nil?
    prev = nil
    curr = list.head
    while curr !=nil
      temp = curr.next
      curr.next = prev
      prev = curr
      curr = temp
    end
    list.head = prev
    list

  end

  def display(list)
    return nil if list.nil?
    curr = list.head
    arr = []
    while curr != nil
      arr.push(curr.value)
      curr = curr.next
    end
    p arr
  end

  def is_circular(list)
    return false if list.nil?
    curr = @head.next
    while curr != nil
      next_node = curr.next
    end
    next_node
  end

end

list = LinkedList.new()
list.add(1)
list.add(2)
list.add(3)

list.display(list)                #list before reversing [1,2,3]
list.display(list.reverse(list))  #list after reversing  [3,2,1]
list.is_circular(list)  #list after reversing  [3,2,1]
