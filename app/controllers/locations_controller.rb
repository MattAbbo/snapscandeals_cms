class LocationsController < ApplicationController
  def show
    Location.find_by!(short_url: params[:short_url])
  end
end
