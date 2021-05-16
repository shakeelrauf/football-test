Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :score_boards, only: [:index] do 
  	collection do 
  		get :minimum_diff
  	end
  end
  root 'score_boards#index'
end
