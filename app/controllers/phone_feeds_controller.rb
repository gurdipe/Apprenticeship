class PhoneFeedsController < ApplicationController
 

  def index
    all_clients = PhoneFeed.all_clients
    
    respond_to do |format|
    format.json { render :json => all_clients }

    end

  end
end

