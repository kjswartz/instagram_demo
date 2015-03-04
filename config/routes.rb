Rails.application.routes.draw do
  resources :posts, except: [:index]

  get 'account/edit'
  get 'account/show'
  patch 'account/update'

  ActiveAdmin.routes(self)
  root 'welcome#index'

end
