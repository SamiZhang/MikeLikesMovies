require 'rails_helper'

RSpec.describe SessionController, type: :controller do
  let!(:test_user) { User.create(email: "testemail@test.test", password: "password")}

  describe "post #create" do
    it "logs a user in and gives them a cookie" do
      session[:user_id] = nil
      post :create, {email: "testemail@test.test", password: "password"}
      expect(controller.session[:user_id]).to eq(User.last.id)
    end

    it "redirects to the user's page" do
      post :create, {email: "testemail@test.test", password: "password"}
      expect(:user).to redirect_to("/users/#{test_user.id}" )
    end
  end

  describe "post #destroy" do
    it "logs a user out and clears the session" do
      delete :destroy
      expect(controller.session[:user_id]).to eq(nil)
    end
  end
end
