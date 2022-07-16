Rails.application.routes.draw do
  root to: "homes#top"
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy] 
  patch 'books/:id' => 'books#update', as: 'update_book'
end
