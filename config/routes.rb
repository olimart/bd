Bd::Application.routes.draw do
  root 'books#index'
  resources :books do
    collection do
      post :search_on_amazon
    end
    member do
      post :update_reading_status
    end
  end  
end
