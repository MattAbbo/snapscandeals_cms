class HomeController < ApplicationController
  def index;end

  def cape_town
    @location_name = "Cape Town"
  end

  def centurion
    @location_name = "Centurion"
  end

  def johannesburg
    @location_name = "Johannesburg"
  end
end
