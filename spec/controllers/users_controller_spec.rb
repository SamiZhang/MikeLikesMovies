require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
      it "assigns a empty new user" do
        get :new, { group_id: 2 }
        expect(assigns(:user)).to be_a(User)
      end
  end

  describe "POST #create" do
    it "creates a new user with an email" do
      post :create, {user: {email: "test@test.test"}, group_id: 2 }
      expect(assigns(:user).email).to be_a(String)
    end

    it "gives the created user a token" do
      post :create, {user: {email: "test@test.test"}, group_id: 2 }
      expect(assigns(:user).token.length).to eq(24)
    end

    it "redirects the user appropriatly when provided valid params" do
      post :create, {user: {email: "test@test.test"}, group_id: 2 }
      expect(:user).to redirect_to("/")
    end

    it "redirects the user appropriatly when --not-- provided valid params" do
      post :create, {user: {email: "t"}, group_id: 2 }
      expect(:user).to render_template(:new)
    end
  end

  describe "Get #set_password" do
    it "gives the user a form to set their password"
  end

  describe "Post #set_password" do
    it "sets the users password if they have a token"
    it "redirects to the login page if given a valid token and password"
    it "redirects to the home page without valid input"
  end


end
