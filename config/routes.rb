Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    get '/parameter_guessing_game_url' => 'guessing#find_first_letter'
    get '/number_guessing_game' => 'guessing#guess_the_number'
  end
end
