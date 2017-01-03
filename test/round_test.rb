require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'
require './lib/check.rb'
require './lib/store.rb'
require './lib/round.rb'
require 'pry'

class RoundTest < Minitest::Test
  def test_round_object
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = Guess.new("Juneau", card_1)
    assert_equal deck, round.deck
    assert_equal [], round.guesses
    assert_equal card_1, round.current_card
    assert_equal guess.card, round.record_guess("Juneau")
    assert_equal 1, round.guesses.count
    #assert_equal "Correct!", round.guesses.first.feedback
    #assert_equal 1, round.number_correct
    #assert_equal , round.current_card
    #assert_equal , round.record_guess("2")
    #assert_equal 2, round.guesses.count
    #assert_equal "Incorrect", round.guesses.last.feedback
    #assert_equal 1, round.number_correct
    #assert_equal 50, round.percent_correct
  end
end
