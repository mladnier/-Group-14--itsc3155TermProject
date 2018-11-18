Rails.application.routes.draw do
  get 'welcome/index'
  get 'dog/index'
 
 resources :dogs do
     resources :matches
 end
 

 
  root 'welcome#index'
end
