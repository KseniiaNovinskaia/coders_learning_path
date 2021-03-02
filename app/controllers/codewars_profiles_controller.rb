class CodewarsProfilesController < ApplicationController
  require 'open-uri'

  def new
    @codewars_profile = CodewarsProfile.new
  end

  def create
    # get the codwars username from the params
    # username = params[:codewars_username]
    username = 'Kimon-Haars'
    # call the codewars api and save the contents in a ruby object
    url = "https://www.codewars.com/api/v1/users/#{username}"
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    # save the relevant data in the database
    user.user_name = username
    user.honor = user['honor']
    user.overall_rank_name = user['ranks']['overall']['name']
    user.overall_score = user['ranks']['overall']['score']
    # this goes on for all lines of the codewars table
  end
end
