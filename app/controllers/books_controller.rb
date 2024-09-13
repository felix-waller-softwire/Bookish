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

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(params.require(:book).permit(:title, :author, :isbn))
    redirect_to book_url(@book)
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_url
  end
end
