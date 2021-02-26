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
      completion = step_progresses.where(step_id: id).first.completion
      duration = step.duration
      if duration < 60
        duration_string = "#{duration} minutes"
      elsif (duration % 60).zero?
        duration_hours = duration / 60
        duration_string = pluralize(duration_hours, 'hour').to_s
      else
        duration_string = "#{duration.fdiv(60).round(1)} hours"
      end

      @step_data[id] = {
        completion: completion,
        duration: duration_string
      }
    end
  end
end
