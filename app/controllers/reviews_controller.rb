class ReviewsController < ApplicationController
  
  def create
    r = Review.new
    r.place_id = params["id"] # :places_id changed to :id for consistancy
    r.rating = params["rating"]
    r.desc = params["desc"]
    r.save
    redirect_to "/places/#{r.place_id}"
  end
  
 

end
