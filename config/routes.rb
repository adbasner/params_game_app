Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    get '/parameter_guessing_game_url' => 'guessing#find_first_letter'
  end
end
