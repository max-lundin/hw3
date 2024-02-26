class EntriesController < ApplicationController
  def new

    @entry = Entry.new

  end

  def create

      @entry = Entry.new
      @entry["title"] = params["entry"]["title"] 
      @entry["date"] = params["entry"]["date"]
      @entry["body"] = params["entry"]["body"]
    
      #need date and title @entry["date"] = params["entry"]["image"]
      # TODO: assign logged-in user as user that created the post
      @entry.save
      redirect_to "/entries"

  end
end
