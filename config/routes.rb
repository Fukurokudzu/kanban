Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :user, shallow: true do
    resources :project, shallow: true do
      resources :list, shallow: true do
        resources :card, shallow: true
      end
    end
  end
end
