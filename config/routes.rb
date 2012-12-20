Lifesocket::Application.routes.draw do
  devise_for :users

  resources :token_authentications, only: [:create, :destroy]
  root :to => 'slate#index'

  # jasmin tests
  mount JasmineRails::Engine => "/specs" unless Rails.env.production?
end
