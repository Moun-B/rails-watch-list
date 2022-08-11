class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @movie = Movie.all
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

end
