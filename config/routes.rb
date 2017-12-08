Rails.application.routes.draw do
  resources :characteristic_values
  resources :weights
  resources :part_of_characteristics
  resources :people
  resources :characteristics
  resources :information_systems do
    collection do
      get :main
    end
  end
  resources :addresses
  get 'welcome/load_from_json', as: :lfj
  root :to => 'information_systems#main'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
