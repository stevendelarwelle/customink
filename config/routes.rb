Rails.application.routes.draw do
  resources :links
  get '/l/:id', to: 'application#send_to_url'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
