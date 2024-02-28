class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end

  def create

    #@place = Place.find_by({ "id" => place["id"]})

    @entry = Entry.new
    @entry["title"] = params["entry"]["title"]
    @entry["posted_on"] = params["entry"]["posted_on"]
    @entry["description"] = params["entry"]["description"]
    @entry["place_id"] = params["entry"]["place_id"]
    @entry.save

   
    redirect_to place_path(@entry.place_id)

    #notice: "Thanks for sharing your story!"
      

 
    end
  end
