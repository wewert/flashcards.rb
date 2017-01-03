require './lib/card.rb'

class Guess
  attr_reader :response, :answer, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    @response == card.answer
  end

  def feedback
    if correct? == true 
    "Correct!"
    else
    "Incorrect."
    end
  end
end

