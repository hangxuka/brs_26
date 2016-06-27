class BooksController < ApplicationController
  def index
    @search = Book.search params[:q]
    @books = @search.result.page(params[:page]).per Settings.per_page
 end
end
