class PathsController < ApplicationController

  def index
    @paths = policy_scope(Path)
    # @paths = Path.all
  end

  def show
  end
end
