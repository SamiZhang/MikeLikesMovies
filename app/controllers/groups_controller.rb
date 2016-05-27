class GroupsController < ApplicationController

  def new
    @group = Group.new
    @groups = Group.all
    render :new
  end

  def create
    @group = Group.new(user_params)
    if @group.save
      redirect_to new_group_movie_path(@group.id)
    else
      flash[:empty] = "Field cannot be empty!"
      redirect_to new_group_path
    end
  end

  def show
    @group = Group.find(params[:id])
    @due_date = @group.group_reviews[0].due_date
    @movie = @group.movies[0]
  end

  private
  def user_params
    params.require(:group).permit(:group_name)
  end

end
