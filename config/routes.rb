Rails.application.routes.draw do
  get 'medications/index'
  get 'medications/show'
  get 'medications/new'
  get 'medications/edit'
  get 'medications/create'
  get 'medications/update'
  get 'medications/destroy'
    resources 'doctors'
    resources 'diets'

    root 'users#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
