class InterestsController < ApplicationController
respond_to :json
  def index
  	@interests = Interest.all
  	respond_with @interests
  end
end
