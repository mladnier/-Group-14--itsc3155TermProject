Rails.application.routes.draw do
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  
  root 'welcome#index'
  get 'dogs/index'
  
 
 
 resources :dogs do
     resources :matches do
         resources :chats
     end
                        
 end
 

 
 
end
