class PathsController < ApplicationController
  def index
    @paths = policy_scope(Path)
  end

  def show

    @path = Path.find_by_id(params[:id])
    authorize @path
    @steps = @path.steps
    @step_progresses = @path.step_progresses.where(user_id: current_user.id)
    set_step_data
    set_path_progress
    @chatroom = @path.chatroom
    @message = Message.new
  end

  private

  def set_step_data
    @step_data = {}
    @steps.each do |step|
      id = step.id
      @step_data[id] = {
        completion: @step_progresses.where(step_id: id).first.completion,
        duration: step.duration_string,
        step_progress_id: @step_progresses.where(step_id: id).first.id
      }
    end
  end

  def set_path_progress
    done = 0
    @step_progresses.each do |step_progress|
      done += Step.find_by_id(step_progress.step_id).duration if step_progress.completion
    end
    @path_progress = (done.fdiv(@path.duration) * 100).ceil.to_s
  end
end
