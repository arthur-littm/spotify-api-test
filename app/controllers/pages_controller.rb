class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:search].present?
      @results = RSpotify::Track.search(params[:search])
    else
      @results = []
    end
  end
end
