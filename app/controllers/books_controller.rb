class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(params.require(:book).permit(:title, :author, :isbn))
    redirect_to book_url(@book)
  end
end
