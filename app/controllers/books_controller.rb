class BooksController < ApplicationController
  def new
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(list_params)
    book.save
    redirect_to '/books/new'
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to new_book_path
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
