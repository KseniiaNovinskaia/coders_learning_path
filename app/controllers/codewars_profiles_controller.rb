class CodewarsProfilesController < ApplicationController
  require 'open-uri'

  def create
    # get the codwars username from the params
    # username = params[:codewars_username]
    @codewars_profile = CodewarsProfile.new(codewars_profile_params)
    @codewars_profile.user_id = current_user.id
    # user_name = params[:user_name]
    # username = 'Kimon-Haars'
    # call the codewars api and save the contents in a ruby object
    url = "https://www.codewars.com/api/v1/users/#{@codewars_profile.user_name}"
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    # save the relevant data in the database
    @codewars_profile.honor = user['honor']
    @codewars_profile.overall_rank_name = user['ranks']['overall']['name']
    @codewars_profile.overall_score = user['ranks']['overall']['score']
    @codewars_profile.code_challenges_authored = user['codeChallenges']['totalAuthored']
    @codewars_profile.code_challenges_completed = user['codeChallenges']['totalCompleted']
    @codewars_profile.first_language_name = user['ranks']['languages'].keys[0]
    @codewars_profile.first_language_rank_name = user['ranks']['languages'].values[0]['name']
    @codewars_profile.first_language_score = user['ranks']['languages'].values[0]['score']
    @codewars_profile.second_language_name = user['ranks']['languages'].keys[1] || 'None chosen'
    @codewars_profile.second_language_rank_name = check_api_return_value(user['ranks']['languages'].values[1], 'name')
    @codewars_profile.second_language_score = check_api_return_value(user['ranks']['languages'].values[1], 'score')

    authorize @codewars_profile

    if @codewars_profile.save
      redirect_to user_profile_path(current_user.name)
    else
      redirect_to root_path
    end
    # render new in the profile controller
    # this goes on for all lines of the codewars table
  end

  private

  def codewars_profile_params
    params.require(:codewars_profile).permit(:user_name)
  end

  def check_api_return_value(hashroot, hashending)
    hashroot ? hashroot[hashending] : 'NA'
  end
end
