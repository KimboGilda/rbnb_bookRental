class ReviewsController < ApplicationController
  before_action :set_book

  def create
    @review = @book.reviews.new(review_params)
    @review.user = current_user

    respond_to do |format|
      if @review.save
        format.html { redirect_to @book, notice: 'Review was successfully created.' }
        format.json {
          render json: {
            review_html: render_to_string(partial: "reviews/review", locals: { review: @review }, formats: [:html])
          }, status: :created
        }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
