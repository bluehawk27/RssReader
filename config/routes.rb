Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  resources :feed, only: [:index] do
    collection do
      get 'liked'
    end
    member do
      put "like", to: "feed#like"
    end
  end
end
