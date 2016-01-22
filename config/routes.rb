Rails.application.routes.draw do
  devise_for :nonprofits
  devise_for :retailers

  root 'welcome#index'

  resources :retailers do
    resources :posts do
    	put 'pickup' => 'posts#pickup'
    	put 'claim' => 'posts#claim'
    end
  end

  resources :nonprofits
end