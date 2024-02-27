class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    # Assuming you pass the place_id as part of the form data or as a query parameter
    @place = Place.find(params["place_id"])
    @entry = @place.entries.build(entry_params)

    if @entry.save
      redirect_to "/places/" + @place.id.to_s
    else
      # If the entry doesn't save, you might want to render the new template again
      # or handle it according to your application's needs.
      render :new
    end
  end

  private

  def entry_params
    params.require("entry").permit("title", "date", "body")
  end
end
