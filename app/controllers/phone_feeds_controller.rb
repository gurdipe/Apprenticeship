class PhoneFeedsController < ApplicationController
 

  def index
    all_clients = PhoneFeed.all_clients
    
    respond_to do |format|
    	format.json { render :json => all_clients }
  	end
	end

  def date_since
			render :text => params[:last_date]
	end


end

