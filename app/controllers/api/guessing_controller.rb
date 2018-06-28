class Api::GuessingController < ApplicationController
  def find_first_letter
    @message = params['name'].upcase
    if @message[0] == 'A'
      @message = 'Hey, your name starts with the letter A!'
    end
    render 'guessing_game.json.jbuilder'
  end
end
