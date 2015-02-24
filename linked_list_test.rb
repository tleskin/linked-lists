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

  def test_a_popped_element_is_removed
    list.push("pizza")
    output = list.pop
    assert_equal "pizza", output
    assert_equal 0, list.count
  end

  def test_it_pops_an_element_from_the_end_of_list
    list.push("pizza")
    list.push("sandwich")
    list.push("ice cream")
    output = list.pop
    assert_equal output, "ice cream", output
    assert_equal 2, list.count
  end

  def test_it_deletes_a_node
    list.push("pizza")
    list.delete("pizza")
    assert_equal 0, list.count
  end

  def test_it_does_not_delete_node_when_data_doesnt_match
    list.push("pizza")
    list.delete("sushi")
    assert_equal 1, list.count
  end

  def test_it_deletes_the_last_node
    list.push("pizza")
    list.push("sandwich")
    list.push("ice cream")
    list.delete("ice cream")
    assert_equal 2, list.count
  end

  def test_it_deletes_a_middle_node
    list.push("pizza")
    list.push("sandwich")
    list.push("ice cream")
    list.delete("sandwich")
    assert_equal 2, list.count
  end

  def test_it_converts_to_an_array_when_there_are_no_elements
    assert_equal [], list.to_a
  end

  def test_it_converts_to_an_array_with_several_elements
    list.push("pizza")
    list.push("kebab")
    list.push("sandwich")
    assert_equal ["pizza", "kebab", "sandwich"], list.to_a
    assert_equal ["pizza", "kebab", "sandwich"], list.to_a
  end

## These are the rescursive list tests

  def test_it_exists
    skip
    assert RecursiveLinkedList
  end

  def test_it_inserts_an_element
    skip
    list = RecursiveLinkedList.new
    assert_equal 0, list.count
    list.push("pizza")
    assert_equal 1, list.count
  end

  def test_it_inserts_multiple_elements
    skip
    list = RecursiveLinkedList.new
    assert_equal 0, list.count
    list.push("pizza")
    list.push("kebab")
    assert_equal 2, list.count
  end

end
