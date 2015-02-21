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

  def test_it_pushes_an_element_into_an_empty_list
    list.push("pizza")
    assert_equal 1, list.count
  end

  def test_it_pushes_multiple_elements_into_a_list
    skip
    list.push("pizza")
    list.push("sandwich")
    assert_equal 2, list.count
  end


end
