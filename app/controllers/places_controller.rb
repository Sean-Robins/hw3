class PlacesController < ApplicationController

  def index
    # find all places rows
    @places = Place.all
    # render companies/index view
  end

  def show
    #find a Place
    @place = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({"place_id" => @place["id"]})
    # render companies/show view with details about place
  end

  def new
    # render view with new place form
  end

  def create
    # start with a new Place
    @place = Place.new
    # assign user-entered form data to place's columns
    @place["name"] = params["name"]
    # save Place row
    @place.save
    # redirect user
    redirect_to "/places"
  end

end
