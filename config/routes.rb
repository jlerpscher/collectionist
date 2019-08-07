Rails.application.routes.draw do
  resources :shops do
    resources :opening_hours
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
