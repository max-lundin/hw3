class Entry < ApplicationRecord
  # talks to the "posts" table

  def index
    render :template => "entries/index"
  end

end
