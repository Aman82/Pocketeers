class PagesController < ApplicationController

  # layout "test"

  def index
    @groups = Group.all.reverse
  end
end
