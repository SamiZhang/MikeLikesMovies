class GroupsController < ApplicationController

  def new
    @group = Group.new
    render :new
  end

  def create
    @group = Group.new(user_params)
    if @group.save
      redirect_to new_group_user_path(@group.id)
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:group).permit(:group_name)
  end

end