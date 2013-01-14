Lifesocket::Application.routes.draw do
  devise_for :users

  class FormatTest
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  resources :token_authentications, only: [:create, :destroy]
  root :to => 'slate#index'

  # jasmin tests
  mount JasmineRails::Engine => "/specs" unless Rails.env.production?
  
  resources :posts, :except => :edit, :constraints => FormatTest.new(:json)
  get '*foo', :to => 'slate#index', :constraints => FormatTest.new(:html)
  get '/', :to => 'slate#index', :constraints => FormatTest.new(:html)
end
