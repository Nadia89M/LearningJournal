Rails.application.routes.draw do
  resources :resources
  resources :languages, except: [:destroy]
  resources :resources do
    member do
      delete :delete_image_attachment
      delete :delete_document_attachment
    end
  end
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
