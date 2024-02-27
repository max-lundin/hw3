Rails.application.routes.draw do
  get 'entries/new', to: 'entries#new', as: 'new_place_entry'
  post 'entries/create', to: 'entries#create', as: 'place_entries'
  #changed these from get entries/new 
  get 'places/index'
  get 'places/show'
  get 'places/new'
  get 'places/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  resources "places"
  resources "entries"
end
