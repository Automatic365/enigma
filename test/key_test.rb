require './test/test_helper'
require "./lib/key"

class KeyTest < Minitest::Test
  def test_class_exists
    assert Key
  end

  def test_creates_a_random_key_of_five_digits_as_a_string
    key = Key.new
    assert_equal 5, key.key.length
  end
end
