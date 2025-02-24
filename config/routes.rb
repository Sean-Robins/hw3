Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # places
  get("/places", {:controller => "places", :action => "index"})
  get("/places/new", {:controller => "places", :action => "new"})
  get("/places/:id", {:controller => "places", :action => "show"})
  post("/places", {:controller => "places", :action => "create"})
  
  #entries
  get("/entries", {:controller => "entries", :action => "index"})
  get("/entries/new", {:controller => "entries", :action => "new"})
  post("/entries", {:controller => "entries", :action => "create"})

  # Defines the root path route ("/")
  get("/", { :controller => "places", :action => "index" })
end
