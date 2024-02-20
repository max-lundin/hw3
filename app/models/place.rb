class Place < ApplicationRecord
  # talks to the "places" table

  def index
    render :template => "places/index"
  end

end
