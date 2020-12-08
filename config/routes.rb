Rails.application.routes.draw do

	root 'shows#index'
  resources :favorites
  resources :channels
  resources :shows
  get '/search', to: 'shows#search'
  devise_for :users, :controllers =>{ registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
