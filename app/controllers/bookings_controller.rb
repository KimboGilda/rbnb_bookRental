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
    existing_booking = current_user.bookings.find_by(book_id: @book.id)

    if existing_booking
      redirect_to edit_booking_path(existing_booking), notice: "You already have a booking for this book."
    else
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      @booking.book = @book

      if @booking.save
        redirect_to bookings_path, notice: "Booking created successfully."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end
  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to  bookings_path
  end
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
