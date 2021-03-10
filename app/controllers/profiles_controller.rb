class ProfilesController < ApplicationController
  def show
    @user = User.find_by(name: params[:user_name])
    authorize @user
    # @codewars_profile = CodewarsProfile.new
  end

  # Profiles controller worked when it had only the show route

  def edit
    @user = User.find_by(name: params[:user_name])
    authorize @user
    @codewars_profile = CodewarsProfile.new
    @github_profile = GithubProfile.new
  end

  # I am not implementing the update method yet, because there is no information
  # I wish to update. I will only have the add codewars_profile at first.

end
