class GroupreviewsController < ApplicationController
    def index
    @groupreviews = GroupReview.all
  end
end
