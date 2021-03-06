class StepProgressesController < ApplicationController

  def create
    @steps.each do |step|
      @step_progress = StepProgress.new
    end
  end

  def update
    @step_progress = StepProgress.find(params[:id])
    authorize @step_progress
    @path = @step_progress.step.path
    @step_progress.update(completion: true)
    redirect_to path_path(@path)
  end
end




