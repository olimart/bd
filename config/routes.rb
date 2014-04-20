Bd::Application.routes.draw do

  resources :books do
    collection do
      post :search_on_amazon
      get  :start_import
      post :import
    end
    member do
      post :update_reading_status
    end
  end

  root 'books#index'

end
