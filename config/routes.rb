Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    registrations: :registrations,
    sessions: :sessions
  }
  namespace :api do
    namespace :v1 do
      resources :projects
      resources :tasks
    end    
  end 
  
   
end
