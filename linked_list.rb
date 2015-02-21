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
      @head = Node.new
    else
      target = head
      while target.link?
        target = target.link
      end
      target.link = Node.new
    end
  end
end

#class RecursiveLinkedList
  # A list using Recursive approaches
#end

class Node

  attr_accessor :link
  # A single node for either list type
  def initialize

  end

  def link?
    link
  end
end
