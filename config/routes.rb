Rails.application.routes.draw do
  root to: "blog#index"
  get '/blogs' => 'blog#index', as: 'blogs'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  get '/blogs/:id' => 'blog#show', as: 'blog'
  post 'blogs' => 'blog#create', as: 'create_blog'
  delete 'blogs/:id' => 'blog#destroy', as:'destroy_blog'
end
