class MoviesController < ApplicationController

  def new
    @group = Group.find(params[:group_id])
    @movie = Movie.new
    render :new
  end

  #this is for when mike creates a new user with just an email
  def create
    @movie = Movie.new(movie_params)
    @group = Group.find(params[:group_id])
     if @movie.save
       GroupReview.create(group_id: @group.id, movie_id: @movie.id)
       redirect_to new_group_user_path(@group.id)
    else
      render :new
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :body, :poster_image)
  end

end
