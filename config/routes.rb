Rjob::Application.routes.draw do
  resources :comments


  resources :job_posts do
    resources :comments
  end


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end