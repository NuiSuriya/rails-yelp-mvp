class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.find(params[:id])
    @review.save
  end
end
