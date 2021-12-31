Bd::Application.routes.draw do
  resources :books do
    collection do
      get  :start_import
      post :import
    end
    member do
      post :update_reading_status
    end
  end

  post "search/amazon"
  post "search/books"
  root "books#index"
end
