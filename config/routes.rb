Rails.application.routes.draw do

  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  get 'pictures/:id/edit' => 'pictures#edit', as: 'edit_picture'
  patch 'pictures:id' =>'pictures#update'

  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id' => 'pictures#show', as: 'picture'

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"


end
