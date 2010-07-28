Civiccommons::Application.routes.draw do
  devise_for :people,
             :controllers => { :registrations => 'registrations' },
             :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'new' }

  resources :events

  resources :ratings

  resources :comments

  resources :answers

  resources :issues

  resources :conversations

  resources :questions

  match '/mockup/:template_name', :to => 'mockups#show', :as => 'mockup'

  match '/mockups_index', :to => 'mockups#index', :as => 'mockups_index'

  match '/mockups', :to => 'mockups#frameset', :as => 'mockups'


  resources :people

  root :to => "homepage#show"
end
