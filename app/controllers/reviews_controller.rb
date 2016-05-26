class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
    render :show
  end

  def edit
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(params[:review].permit(:title, :body))
      redirect_to @review
    else
      render :edit
    end
  end

end
