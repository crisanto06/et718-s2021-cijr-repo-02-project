Rails.application.routes.draw do
  
  get 'about/index'

  resources :articles do
    resources :comments
  end
  
  resources :welcome
  
  get "welcome/contact"
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
