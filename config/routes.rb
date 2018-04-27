Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'admin/dashboard#index'
  # get 'admin/mocks/(*path)', to: 'mocks#get_path'
  # get 'mocks', as: :document, path: 'document'
  # resources :articles, as: :document, path: "document"
  # match '*all', to: 'mocks#get_path', via: [:get, :post]
  get '*path', to: 'mocks#get_path'


end
