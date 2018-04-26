Rails.application.routes.draw do
  resources :jobs
  # root 'jobs#index' # rails 4
  root to: 'jobs#index' # rails 3
  get 'hello/world' => 'hello#world'
end
