Farm::Application.routes.draw do

  get "/intro" => "static_page#intro"
  get "/product" => "static_page#product"

  resources :questions, :only => [:index, :create]
  resources :news, :only => [:index, :show]
  resources :productclasses, :only => [:index, :show] do
    resources :products, :only => :show
  end
  resources :orders, :only => [:index, :create]
  

  match "/admin/createAdmin" => "admin#createAdmin", :via => :post
  match "/admin/loginCheck" => "admin#loginCheck", :via => :post
  match "/admin/update" => "admin#update", :via => :put
  
  namespace :admin do
    get '/' => 'questions#index'    
    get "sign_up", "log_in", "log_out", "edit"

    resources :questions, :only => [:show, :index, :destroy] do
      resources :answers, :only => [:create, :edit, :destroy, :update]
    end

    resources :news, :except => :new do
      match 'uploadPhoto' => 'news#createPhoto', :via => [:post]
      match 'deletePhoto/:id' => 'news#destroyPhoto', :via => [:delete]
    end

    resources :productclasses do
      resources :products, :except => [:index, :new] do
        match 'uploadPhoto' => 'products#createPhoto', :via => [:post]
        match 'deletePhoto/:id' => 'products#destroyPhoto', :via => [:delete]
      end
    end

    resources :orderproducts
    resources :orders, :only => [:index, :show]
    
  end

  root :to => "static_page#index"

end
