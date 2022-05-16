Rails.application.routes.draw do

  root to: 'homes#top'
  get 'home/about' => 'homes#about'


  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :public do
    resources :customers, only: [:show]
  
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
