class LocationsController < ApplicationController
  def show
    @location = Location.find_by!(short_url: params[:short_url])
  end
end
