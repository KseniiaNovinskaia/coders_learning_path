class PathsController < ApplicationController

  def index
    @paths = policy_scope(Path)
    # @paths = Path.all
  end

  def show
    authorize @path = Path.find_by_id(params[:id])
    @steps = @path.steps
    step_progresses = @path.step_progresses.where(user_id: current_user.id)

    @step_data = {}
    @steps.each do |step|
      id = step.id
      @step_data[id] = {
        completion: step_progresses.where(step_id: id).first.completion,
        duration: step.duration_string
      }
    end
  end
end
