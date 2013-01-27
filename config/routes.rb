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
  
  resources :jobs, except: :edit, constraints: FormatTest.new(:json) do
    resources :job_pictures, except: :edit
  end

  resources :job_categories, except: :edit, constraints: FormatTest.new(:json) do
    resources :jobs, except: :edit do
      resources :job_pictures, except: :edit
    end
  end

  resources :job_pictures, except: :edit, constraints: FormatTest.new(:json)
  
  resources :posts, except: :edit, constraints: FormatTest.new(:json) do
    resources :post_pictures, except: :edit
  end

  resources :post_pictures, except: :edit, constraints: FormatTest.new(:json)
  
  resources :projects, except: :edit, constraints: FormatTest.new(:json) do
    resources :project_packages, except: :edit
    resources :project_pictures, except: :edit
  end
  
  resources :project_categories, except: :edit, constraints: FormatTest.new(:json) do
    resources :projects, except: :edit do
      resources :project_packages, except: :edit
      resources :project_pictures, except: :edit
    end
  end
  
  resources :project_packages, except: :edit, constraints: FormatTest.new(:json)
  resources :project_pictures, except: :edit, constraints: FormatTest.new(:json)

  root to: 'slate#index'

  # redirect everything else to ember
  get '*foo', to: 'slate#index', constraints: FormatTest.new(:html)
  get '/', to: 'slate#index', constraints: FormatTest.new(:html)
end
