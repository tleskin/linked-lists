require "minitest"
require "minitest/autorun"
require "minitest/emoji"
require_relative "linked_list"

class LinkedListTest < Minitest::Test

  attr_reader :list

  def setup
    @list = IterativeLinkedList.new
  end

  def test_it_exists
    @list
    assert true
  end

  def test_it_starts_with_zero_elements
    assert_equal 0, list.count
  end


end
