ChessCamp::Application.routes.draw do
  # generated routes
  resources :curriculums
  resources :instructors
  resources :camps
  resources :sessions
  resources :users
  resources :locations
  resources :families
  resources :students
  resources :registrations

  # semi-static routes
  get 'home', to: 'home#index', as: :home
  get 'home/about', to: 'home#about', as: :about
  get 'home/contact', to: 'home#contact', as: :contact
  get 'home/privacy', to: 'home#privacy', as: :privacy


  get 'user/edit' => 'users#edit', as: :edit_current_user
  get 'signup' => 'users#new', as: :signup
  get 'logout' => 'sessions#destroy', as: :logout
  get 'login' => 'sessions#new', as: :login

  
  # set the root url
  root to: 'home#index'

end
