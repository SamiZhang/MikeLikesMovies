require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe "get #new" do
    it "creates a new group" do
      get :new
      expect(assigns(:group)).to be_a(Group)
    end
    it "does a shows the new user page" do
      get :new
      expect(:group).to render_template(:new)
    end
  end

  describe "post #create" do
    it "creates a new group" do
      post :create, {group: {group_name: "test_group"}}
      expect(:group).to redirect_to(new_group_user_path(Group.last.id))
    end
  end

end
