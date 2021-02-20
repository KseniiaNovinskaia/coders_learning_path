class PathsController < ApplicationController
  def index
    @paths = Path.all
  end

  def show
  end
end
