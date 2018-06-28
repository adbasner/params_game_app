class Api::GuessingController < ApplicationController
  def find_first_letter
    @message = params['name'].upcase
    if @message[0] == 'A'
      @message = 'Hey, your name starts with the letter A!'
    end
    render 'guessing_game.json.jbuilder'
  end

  def guess_the_number
    user_input = params['user_guess'].to_i
    answer = 45
    if user_input == answer
      @message = "You got it!"
    elsif user_input < answer
      @message = "Too low, guess higher."
    else
      @message = "Too high, guess lower."
    end
    render 'guess_the_number.json.jbuilder'
  end
end
