require './lib/check.rb'

class Round
  attr_reader :deck, :guesses, :current_card, :record_guess

  def initialize(deck)
    @deck = deck
    @current_card = deck.cards[0]
    @guesses = []
    @correct_answers = []
  end

  def record_guess(guess)
    @record_guess = Guess.new(guess, deck.cards[0])
    @guesses << @record_guess
    @record_guess.card
#    @number_correct
#    @number_incorrect
  end

  def record_guess_count
    @guesses.count
  end

#  def number_correct
#    @number_correct = number_correct
#  end

#  def feedback
#    if correct = guess == round.deck
#    else
#      incorrect
#    end
#  end
#  def record_is_correct
#    if corect? == "Correct!"
#      record_correct = number_correct +=1
#    else
#      "Incorrect."
#      record_incorrect = number_incorrect +=1
#    end
#  end

#    def number_correct
#      if correct? == "Correct"
#        correct_answers << record_is_correct
#        @correct_answers.count
#      end
end
