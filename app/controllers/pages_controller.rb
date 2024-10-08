class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @books = Book.all
    @genres = Book.pluck(:genre).uniq
  end
end
