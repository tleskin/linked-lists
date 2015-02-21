require "minitest"
require "minitest/autorun"
require "minitest/emoji"
require_relative "linkedlist"

class LinkedListTest < Minitest::Test

  def setup
    @setup = IterativeLinkedList.new
  end

  def test_it_exists
    @setup
    assert true
  end


end
