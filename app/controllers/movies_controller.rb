class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @lists = List.all
    @bookmark = Bookmark.new
    @movie = Movie.find(params[:id])

    # Add the bookmark new route here to create a form to add the movie to a list on the show page
  end
end
