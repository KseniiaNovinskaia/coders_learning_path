class StepProgressesController < ApplicationController

  def create
    @path = Path.find(params[:path_id])
    @user = current_user
      @path.steps.each do |step|
      @step_progress = StepProgress.new
      @step_progress.path = @path
      @step_progress.user = current_user
      @step_progress.step = step
      authorize @step_progress
      @step_progress.save
      end
    redirect_to path_path(@path)
  end

  def update
    @step_progress = StepProgress.find(params[:id])
    authorize @step_progress
    @path = @step_progress.step.path
    @step_progress.update(completion: true)
    redirect_to path_path(@path)
  end
end


