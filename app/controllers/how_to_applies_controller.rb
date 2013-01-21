class HowToAppliesController < ApplicationController
  # GET /how_to_applies
  # GET /how_to_applies.json
  load_and_authorize_resource
  def index
    @how_to_applies = HowToApply.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @how_to_applies }
    end
  end

  # GET /how_to_applies/1
  # GET /how_to_applies/1.json
  def show
    @how_to_apply = HowToApply.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @how_to_apply }
    end
  end

  # GET /how_to_applies/new
  # GET /how_to_applies/new.json
  def new
    @how_to_apply = HowToApply.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @how_to_apply }
    end
  end

  # GET /how_to_applies/1/edit
  def edit
    @how_to_apply = HowToApply.find(params[:id])
  end

  # POST /how_to_applies
  # POST /how_to_applies.json
  def create
    @how_to_apply = HowToApply.new(params[:how_to_apply])

    respond_to do |format|
      if @how_to_apply.save
        format.html { redirect_to @how_to_apply, notice: 'How to apply was successfully created.' }
        format.json { render json: @how_to_apply, status: :created, location: @how_to_apply }
      else
        format.html { render action: "new" }
        format.json { render json: @how_to_apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /how_to_applies/1
  # PUT /how_to_applies/1.json
  def update
    @how_to_apply = HowToApply.find(params[:id])

    respond_to do |format|
      if @how_to_apply.update_attributes(params[:how_to_apply])
        format.html { redirect_to @how_to_apply, notice: 'How to apply was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @how_to_apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how_to_applies/1
  # DELETE /how_to_applies/1.json
  def destroy
    @how_to_apply = HowToApply.find(params[:id])
    @how_to_apply.destroy

    respond_to do |format|
      format.html { redirect_to how_to_applies_url }
      format.json { head :no_content }
    end
  end
end
