Rails.application.routes.draw do
  root to: 'books#top'  
  

  get 'error'=>'books#error'
  resources :books
  
  #新規投稿は/books/new
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
