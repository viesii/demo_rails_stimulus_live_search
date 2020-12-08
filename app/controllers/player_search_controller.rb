class PlayerSearchController < ApplicationController
  # Ensure that our index view will only render the HTML in app/views/player_search/index.html.erb. 
  # If we don’t set layout to false, every search request we make will render our index view inside of the layout defined in app/views/layouts/application.html.erb 
  # We don’t want that since we’re planning to insert the search results into a piece of an existing page.
  layout false

  def index
    @players = Player.where("name LIKE ?", "%#{params[:search]}%")
  end
end
