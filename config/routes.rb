Rails.application.routes.draw do
  resources :restaurants, except: [:update, :destroy, :edit] do
    #Visitors options
    resources :reviews, only: [:new, :create, :show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
