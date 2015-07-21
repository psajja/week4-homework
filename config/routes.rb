Rails.application.routes.draw do

  root 'places#index'

  #Golden 7 
  get '/places' => 'places#index'  
  get '/places/new' => 'places#new'
  post '/places' => 'places#create'  # post http request 
    
  get '/places/:id' => 'places#show'
  delete '/places/:id' => 'places#destroy' # maps to action destry under golden 7
  get '/places/:id/edit' => 'places#edit'
  patch '/places/:id'=> 'places#update' # updated to patch http request since updating existing
    
  post '/reviews/:id'  => 'reviews#create' # :places_id changed to :id for constance and post used

end
