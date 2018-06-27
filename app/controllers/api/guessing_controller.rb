class Api::GuessingController < ApplicationController
  def find_first_letter
    @message = "hello world"

    render 'guessing_game.json.jbuilder'
  end
end

