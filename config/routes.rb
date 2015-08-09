Rails.application.routes.draw do
  
# home route
root to: 'sites#landing'

# routes for user
get '/signup', to: 'users#new'
post '/signup', to: 'users#create'
get '/dashboard', to: 'users#dashboard'
get '/profile', to: 'users#edit'

# routes for sessions
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'


# routes for swarms
resources :swarms do
  post 'assign_swarm', on: :member
  post 'deactivate', on: :member
  post 'reactivate', on: :member
end


end
