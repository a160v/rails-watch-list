Rails.application.routes.draw do
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/create'
  get 'lists', to: 'lists#index'
end
