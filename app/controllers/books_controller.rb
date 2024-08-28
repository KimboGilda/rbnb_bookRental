class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]

  def index
    @books = Book.all
  end

  def show
    @booking = Booking.new(book: @book)
    @review = Review.new(book: @book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path(@book)
  end

  def new
    @book = Book.new
  end

  def create

    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    redirect_to book_path, status: :see_other
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :genre, :price, :availability, :user_id)
  end
end
