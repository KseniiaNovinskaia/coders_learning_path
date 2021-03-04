class ProfilesController < ApplicationController
  def show
    @user = User.find_by(name: params[:user_name])
    authorize @user
    @codewars_profile = CodewarsProfile.new
  end

end
