class IterativeLinkedList
  # A list using Iterative approaches
  attr_reader :head

  def count
    if @head == nil
      0
    else
      count = 1
      current = head
      while current.link?
        count += 1
        current = current.link
      end
      count
    end
  end

  def push(data)
    if @head == nil
      @head = Node.new(data)
    else
      target = head
      while target.link?
        target = target.link
      end
      target.link = Node.new(data)
    end
  end

  def pop
    current = head
    last = nil
    while current.link?
      last = current
      current = current.link
    end

    if last == nil
      @head = nil
    else
      last.link = nil
    end
    current.data
  end
end

#class RecursiveLinkedList
  # A list using Recursive approaches
#end

class Node

  attr_accessor :link
  attr_reader :data

  # A single node for either list type
  def initialize(input_data)
    @data = input_data
  end

  def link?
    link
  end

end
