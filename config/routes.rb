Rails.application.routes.draw do
  resources :projects
  resources :resources
  resources :languages, except: [:destroy]
  resources :technologies, except: [:destroy]
  resources :frameworks, except: [:destroy]
  resources :dbs, except: [:destroy]
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
