class ProfilesController < ApplicationController
  def show
    @user = User.find_by(name: params[:user_name])
    authorize @user
    @codewars_profile = CodewarsProfile.new
  end

  # Profiles controller worked when it had only the show route
end
