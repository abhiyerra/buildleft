class HelpCentersController < ApplicationController
  def donate
    donate_url = HelpCenter.find(params[:id]).donate_url
    redirect_to donate_url if donate_url
  end
end
