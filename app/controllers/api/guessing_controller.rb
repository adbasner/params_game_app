class Api::GuessingController < ApplicationController
  def comparison(a,b)
    if a == b
      @message = "You got it!"
    elsif a < b
      @message = "Too low, guess higher."
    else
      @message = "Too high, guess lower."
    end
  end

  def find_first_letter
    @message = params['name'].upcase
    if @message[0] == 'A'
      @message = 'Hey, your name starts with the letter A!'
    end
    render 'guessing_game.json.jbuilder'
  end

  def guess_the_number
    user_input = params['number'].to_i
    answer = 45
    comparison(user_input, answer)
    render 'guess_the_number.json.jbuilder'
  end

  def guess_with_segments
    user_input = params['number'].to_i
    answer = 45
    comparison(user_input, answer)
    render 'guess_the_segment_number.json.jbuilder'
  end

  def glob_test
    @path = params['junk']
    user_input = params['number'].to_i
    # @message = user_input
    answer = 45
    comparison(user_input, answer)
    render 'globbing.json.jbuilder'
  end
end
