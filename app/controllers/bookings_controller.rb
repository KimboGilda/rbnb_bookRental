class BookingsController < ApplicationController

  def index
    @books = Book.all
    @bookings = current_user.bookings
    @users = User.all
  end
  def new
    @book = Book.find(params[:book_id])
    @users = User.all
    @booking = Booking.new
  end

  def create
    @book = Book.find(params[:book_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.book = @book
    if @booking.save
      redirect_to book_bookings_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
    # @booking.save
    # redirect_to book_bookings_path(@book)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
