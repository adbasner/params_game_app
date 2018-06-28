class Api::GuessingController < ApplicationController
  def find_first_letter
    @message = params['name'].upcase

    if params['name'].downcase.start_with?('a')
      p '*' * 50
      p 'Hey, your name starts with the letter A!'
      p '*' * 50
    end
    render 'guessing_game.json.jbuilder'
  end
end
