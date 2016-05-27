require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe "get #new" do
    it "creates a new group" do
      session[:user_id] = 1
      get :new
      expect(assigns(:group)).to be_a(Group)
    end
    it "does a shows the new user page" do
      session[:user_id] = 1
      get :new
      expect(:group).to render_template(:new)
    end
  end

  describe "post #create" do
    it "creates a new group" do
      session[:user_id] = 1
      post :create, {group: {group_name: "test_group"}, group_id: 2 }
      expect(:group).to redirect_to(new_group_movie_path(Group.last.id))
    end
  end

end
