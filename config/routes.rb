Rails.application.routes.draw do
  get 'chat/new'
  get 'chat/create'
  root 'welcome#index'
  get 'dogs/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 
 resources :dogs do
     resources :matches do
         resources :chats
     end
                        
 end
 

 
 
end
