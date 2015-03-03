Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'welcome#index'

end
