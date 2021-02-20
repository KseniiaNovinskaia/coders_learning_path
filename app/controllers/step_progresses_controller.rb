class StepProgressesController < ApplicationController
  def create
    @path = Path.find(params[:path_id])
    @path.steps.each do |step|
      @step_progress = StepProgress.new
      @step_progress.path = @path
      @step_progress.user = current_user
      @step_progress.step = step
      @step_progress.save
    end
  end

  def update
  end
end
