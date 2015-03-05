Rails.application.routes.draw do
  resources :posts, except: [:index] do
    member do
      post 'like'
      delete 'unlike'
    end
  end

  get 'account/edit'
  get 'account/show'
  patch 'account/update'

  ActiveAdmin.routes(self)
  root 'welcome#index'

end
