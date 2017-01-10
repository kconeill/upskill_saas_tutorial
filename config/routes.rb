
# Controller#function in controller file
# resources creates many paths that may be useful (rails routes) and used in controller
# but we don't need them all, so we only say the ones we want (multiple in [])

Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
