class GroupreviewsController < ApplicationController
    def index
      @groupreviews = GroupReview.all
    end

    def show
      @groupreview = GroupReview.find(params[:id])
    end
end
