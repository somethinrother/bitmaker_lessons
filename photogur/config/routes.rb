Rails.application.routes.draw do

  resource :session, only: %i(create new destroy)

  root 'pictures#index'

  resource :users, only: %i(create new)

  resources :pictures

  get 'pictures/index/:year' => 'pictures#years_index'

end
