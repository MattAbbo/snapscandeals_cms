class HomeController < ApplicationController
  def index;end

  def cape_town
    @title_location = "Cape Town"
  end

  def centurion
    @title_location = "Centurion"
  end

  def johannesburg
    @title_location = "Johannesburg"
  end
end
