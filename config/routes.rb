Lifesocket::Application.routes.draw do
  # request filter
  class FormatTest
    attr_accessor :mime_type

    def initialize format
      @mime_type = Mime::Type.lookup_by_extension format
    end

    def matches? request
      request.format == mime_type
    end
  end

  # jasmin tests
  mount JasmineRails::Engine => "/specs" unless Rails.env.production?
  
  # other api routes
  devise_for :users
  resources :token_authentications, only: [:create, :destroy], constraints: FormatTest.new(:json)
  resources :adresses, except: :edit, constraints: FormatTest.new(:json)
  resources :jobs, except: :edit, constraints: FormatTest.new(:json)
  resources :job_categories, except: :edit, constraints: FormatTest.new(:json)
  resources :job_pictures, except: :edit, constraints: FormatTest.new(:json)
  resources :posts, except: :edit, constraints: FormatTest.new(:json)
  resources :post_pictures, except: :edit, constraints: FormatTest.new(:json)
  resources :projects, except: :edit, constraints: FormatTest.new(:json)
  resources :project_categories, except: :edit, constraints: FormatTest.new(:json)
  resources :project_packages, except: :edit, constraints: FormatTest.new(:json)
  resources :project_pictures, except: :edit, constraints: FormatTest.new(:json)
  resources :resume_categories, except: :edit, constraints: FormatTest.new(:json)
  resources :resume_statistics, except: :edit, constraints: FormatTest.new(:json)
  root to: 'slate#index'

  # redirect everything else to ember
  get '*foo', to: 'slate#index', constraints: FormatTest.new(:html)
  get '/', to: 'slate#index', constraints: FormatTest.new(:html)
end
