class PhoneFeedsController < ApplicationController
 

  def index
    all_clients = PhoneFeed.all_clients
    
    respond_to do |format|
    	format.json { render :json => all_clients }
  	end
	end

  def date_since
		records_since = PhoneFeed.records_since params[:last_date]
		
		respond_to do |format|
    	format.json { render :json => records_since }
  	end
	end


end

