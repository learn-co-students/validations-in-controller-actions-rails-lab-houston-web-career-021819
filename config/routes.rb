Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/authors/new", to: "authors#new", as: "new_author"
  get "/authors/:id", to: "authors#show", as: "author"
  post "/authors", to: "authors#create"
 
  get "/posts/:id", to: "posts#show", as: "post"
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  patch "/posts/:id", to: "posts#update"
end 
