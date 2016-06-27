class Admin::BooksController < ApplicationController
  before_action :load_category, only: [:new]

  def index
    @books = Book.page(params[:page]).per Settings.admin.books.page
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_params
    if @book.save
      flash[:success] = t "application.flash.books.create_success"
      redirect_to admin_books_path
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit :title, :description, :publish_date, :author,
      :number_page, :category_id, :picture
  end

  def load_category
    @categories = Category.all
  end
end
