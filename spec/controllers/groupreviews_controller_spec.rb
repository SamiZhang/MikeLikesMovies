require 'rails_helper'

RSpec.describe GroupreviewsController, type: :controller do

  describe "get #index" do
    it "provides all group reviews" do
      get :index
      expect(assigns(:groupreviews).first).to be_a(GroupReview)
    end
  end

  describe "get #show" do
    it "provides the specific goup review selected" do
      get :show, { id: 1 }
      expect(assigns(:groupreview)).to be_a(GroupReview)
    end
  end
end
