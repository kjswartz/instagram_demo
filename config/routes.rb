Rails.application.routes.draw do
  get 'account/edit'
  get 'account/show'
  patch 'account/update'

  ActiveAdmin.routes(self)
  root 'welcome#index'

end
