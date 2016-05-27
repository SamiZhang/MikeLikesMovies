class GroupsController < ApplicationController
  include ApplicationHelper

  before_filter :admin_authenticate

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
      render :new
    end
  end

  private
  def user_params
    params.require(:group).permit(:group_name)
  end

end
