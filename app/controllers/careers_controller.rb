class CareersController < ApplicationController

  load_and_authorize_resource

  # GET /regions/new
  # GET /regions/new.json
  def new
    @career = Career.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @career }
    end
  end

  def index
    @careers = Career.all
    # @sectors = Sector.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @careers }
    end
  end

  # POST /regions
  # POST /regions.json
  def create
    @career = Career.new(params[:career])

    respond_to do |format|
      if @career.save
        format.html { redirect_to @career, notice: 'Career was successfully created.' }
        format.json { render json: @career, status: :created, location: @career }
      else
        format.html { render action: "new" }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /regions/1
  # GET /regions/1.json
  def show
    @career = Career.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @career }
    end
  end

  def edit
    @career = Career.find(params[:id])
  end

  def update
    @career = Career.find(params[:id])

    respond_to do |format|
      if @career.update_attributes(params[:career])
        format.html { redirect_to @career, notice: 'career was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @career = Career.find(params[:id])
    @career.destroy

    respond_to do |format|
      format.html { redirect_to careers_url }
      format.json { head :no_content }
    end
  end


end
