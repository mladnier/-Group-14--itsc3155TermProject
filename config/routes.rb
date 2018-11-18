Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  get 'dog/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 
 resources :dogs do
     resources :matches
 end
 

 
 
end
