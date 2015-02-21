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

  def test_it_pushes_two_elements_into_a_list
    list.push("pizza")
    list.push("sandwich")
    assert_equal 2, list.count
  end

  def test_it_pushes_three_elements_into_a_list
    list.push("pizza")
    list.push("sandwich")
    list.push("ice cream")
    assert_equal 3, list.count
  end

  def test_it_pops_an_element_from_the_list
    list.push("pizza")
    output = list.pop
    assert_equal output, "pizza", output
  end


end
