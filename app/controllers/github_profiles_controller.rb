class GithubProfilesController < ApplicationController
require 'open-uri'

  def create
    # get the codwars username from the params
    # username = params[:github_username]
    @github_profile = GithubProfile.new(github_profile_params)
    @github_profile.user_id = current_user.id
    # user_name = params[:user_name]
    # username = 'Kimon-Haars'
    # call the github api and save the contents in a ruby object
    url = "https://api.github.com/users/#{@github_profile.user_name}"
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    # save the relevant data in the database
    @github_profile.public_repos = user['public_repos']
    @github_profile.public_gists = user['public_gists']
    @github_profile.followers = user['followers']
    @github_profile.following = user['following']
    @github_profile.joined_github = user['created_at'].match(/\d{4}-\d{2}-\d{2}/)
    # @github_profile.overall_score = user['ranks']['overall']['score']
    # @github_profile.code_challenges_authored = user['codeChallenges']['totalAuthored']
    # @github_profile.code_challenges_completed = user['codeChallenges']['totalCompleted']
    # @github_profile.first_language_name = user['ranks']['languages'].keys[0]
    # @github_profile.first_language_rank_name = user['ranks']['languages'].values[0]['name']
    # @github_profile.first_language_score = user['ranks']['languages'].values[0]['score']
    # @github_profile.second_language_name = user['ranks']['languages'].keys[1] || 'None chosen'
    # @github_profile.second_language_rank_name = check_api_return_value(user['ranks']['languages'].values[1], 'name')
    # @github_profile.second_language_score = check_api_return_value(user['ranks']['languages'].values[1], 'score')

    authorize @github_profile

    if @github_profile.save
      redirect_to user_profile_path(current_user.name)
    else
      redirect_to user_profile_path(current_user.name)
      # render 'profiles/edit'
    end
    # render new in the profile controller
    # this goes on for all lines of the github table
  end

  private

  def github_profile_params
    params.require(:github_profile).permit(:user_name)
  end

  def check_api_return_value(hashroot, hashending)
    hashroot ? hashroot[hashending] : 'NA'
  end
end
