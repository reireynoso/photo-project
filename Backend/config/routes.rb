Rails.application.routes.draw do
  # resources :connects
  # resources :people
  # resources :comments
  # delete '/photos/:id', to: 'photos#destroy'
  patch '/photos/:id', to: 'photos#update'
  resources :photos, only: [:index]

  resources :genres, only:[:index, :show] do 
    resources :photos, only: [:index,:create,:destroy,:update,:show] do 
      resources :comments, only: [:index,:show,:create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
