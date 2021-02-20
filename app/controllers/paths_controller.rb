class PathsController < ApplicationController
  def index
  end

  def show
    authorize @path = Path.find_by_id(params[:id])
    @steps = @path.steps
    @step_progresses = @path.step_progresses.where(user_id: current_user.id)
  end
end
