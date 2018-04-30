Rails.application.routes.draw do
  resources :jobs do
    post '/comments' => 'comments#create'
  end
  
  root "jobs#premium"# rails 4
  #root to: 'jobs#index' # rails 3
  get 'hello/world' => 'hello#world'
end
