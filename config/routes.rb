Rails.application.routes.draw do
  
# home route
root to: 'sites#landing'

# routes for user
get '/signup', to: 'users#new'
post '/signup', to: 'users#create'
get '/dashboard', to: 'users#dashboard'

# routes for sessions
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
post '/logout', to: 'sessions#destroy'


# routes for swarms
resources :swarms

# route to claim a post
post '/claim', to: 'swarms#assign_swarm'

end