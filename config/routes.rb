Rails.application.routes.draw do
  scope "(:locale)", locale: /en|it/ do
    resources :projects
    resources :resources
    resources :languages, except: [:destroy]
    resources :resources do
      member do
        delete :delete_image_attachment
        delete :delete_document_attachment
      end
    end
    resources :technologies, except: [:destroy]
    resources :frameworks, except: [:destroy]
    resources :dbs, except: [:destroy]
    root 'resources#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
