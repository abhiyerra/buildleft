class HomeController < ApplicationController
  def index
    @help_center = HelpCenter.new
    @volunteer = Volunteer.new
  end

  def about

  end

end
