class BookmarksController < ApplicationController
  def new; end

  def create
    if params[:movie_id].present?
      @bookmark = Bookmark.new(bookmark_params)
      @movie = Movie.find(params[:movie_id])
      @bookmark.movie = @movie
      if @bookmark.save
        flash[:notice] = 'Successfully added to list.'
        redirect_to @bookmark.movie

      else
        @lists = List.all
        flash.now[:alert] = 'Unable to add to list.'
        render 'movies/show', status: :unprocessable_entity

      end

    elsif params[:list_id].present?
      @list = List.find(params[:list_id])
      @bookmark = Bookmark.new(bookmark_params)
      @bookmark.list = @list
      if @bookmark.save
        flash[:notice] = 'Successfully added to list.'
        redirect_to @bookmark.list

        # redirect_to list_path(@bookmark.list)
      else
        puts @bookmark.errors.messages
        @lists = List.all
        flash.now[:alert] = 'Unable to add to list.'
        render 'lists/show', status: :unprocessable_entity
        # render 'lists/show', status: 422
      end
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def set_bookmark; end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :list_id, :list, :movie, :comment)
  end
end

# = form_with model: [@movie, @bookmark]

# { "bookmark" => { list_id: 1 }}
