Admin::Application.routes.draw do
  
  resource :products do
    member do
      get 'index'
    end
  end

  resource :sessions do
    member do
      get 'new'
      post 'create'
      delete 'destroy'
    end
  end
  
  root :to => "sessions#new"
end
