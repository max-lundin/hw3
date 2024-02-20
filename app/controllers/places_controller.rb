class PlacesController < ApplicationController
  def index

        # find all places rows
        @places = Place.all
        # render companies/index view


  end

  def show

        # find a place
        @place = Place.find_by({ "id" => params["id"] })

  end

  def new
  end

  def create

    @place = Place.new

    @place["name"] = params["name"]

    @place.save

    redirect_to href="/places/"

  end


end
