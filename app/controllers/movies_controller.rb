class MoviesController < ApplicationController
  include ApplicationHelper
  before_filter :admin_authenticate

  def new
    admin_authenticate
    @group = Group.find(params[:group_id])
    @greview = GroupReview.new
    @movie = Movie.new
    render :new
  end

  #this is for when mike creates a new user with just an email
  def create
    admin_authenticate
    @movie = Movie.new(movie_params)
    @group = Group.find(params[:group_id])
     if @movie.save
       p params[:due_date]
       review = GroupReview.create(group_id: @group.id, movie_id: @movie.id, due_date: params[:movie][:group_review][:due_date])
       redirect_to new_group_user_path(@group.id)
    else
      flash[:empty] = "Field(s) cannot be empty!"
      redirect_to new_group_movie_path
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :body, :poster_image)
  end

end
