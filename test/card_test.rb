require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'
require 'pry'

class CardTest < Minitest::Test
  def test_card_ask_question
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end
end

def test_it_can_make_card_object
  skip
  card2 = Card.new("What is the capital of Alaska?", "Juneau")
  assert_instance_of card2
end
