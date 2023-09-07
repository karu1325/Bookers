class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
