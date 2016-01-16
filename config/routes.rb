Rails.application.routes.draw do
  devise_for :nonprofits
  devise_for :retailers

  root 'welcome#index'

  resources :retailers do
    resources :posts
  end

  resources :nonprofits

end