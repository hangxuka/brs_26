class BooksController < ApplicationController
  load_and_authorize_resource
  before_action :load_categories, only: [:index]

  def index
    @search = Book.search params[:q]
    @books = @search.result.page(params[:page]).per Settings.per_page
  end

  def show
    if @book.nil?
      flash[:danger] = t "books.show.error"
      redirect_to books_path
    else
      load_reviews
    end
  end

  private
  def load_reviews
    @reviews = @book.reviews
  end

  def load_categories
    @categories = Category.all
  end
end
