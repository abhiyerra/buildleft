class HomeController < ApplicationController
  def index
    @help_center = HelpCenter.new
    @user = User.new
  end

  def about

  end

end
