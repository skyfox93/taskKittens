Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
      namespace :v1 do
        resources :users, only: [:create, :show, :patch, :destroy] do
          resources :lists, shallow: true
        end
         resources :tasks, only: [:create, :show, :update, :destroy]

      end

    end
end
