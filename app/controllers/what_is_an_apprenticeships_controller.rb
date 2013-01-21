class WhatIsAnApprenticeshipsController < ApplicationController
  # GET /what_is_an_apprenticeships
  # GET /what_is_an_apprenticeships.json
    load_and_authorize_resource
  def index
    @what_is_an_apprenticeships = WhatIsAnApprenticeship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @what_is_an_apprenticeships }
    end
  end

  # GET /what_is_an_apprenticeships/1
  # GET /what_is_an_apprenticeships/1.json
  def show
    @what_is_an_apprenticeship = WhatIsAnApprenticeship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @what_is_an_apprenticeship }
    end
  end

  # GET /what_is_an_apprenticeships/new
  # GET /what_is_an_apprenticeships/new.json
  def new
    @what_is_an_apprenticeship = WhatIsAnApprenticeship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @what_is_an_apprenticeship }
    end
  end

  # GET /what_is_an_apprenticeships/1/edit
  def edit
    @what_is_an_apprenticeship = WhatIsAnApprenticeship.find(params[:id])
  end

  # POST /what_is_an_apprenticeships
  # POST /what_is_an_apprenticeships.json
  def create
    @what_is_an_apprenticeship = WhatIsAnApprenticeship.new(params[:what_is_an_apprenticeship])

    respond_to do |format|
      if @what_is_an_apprenticeship.save
        format.html { redirect_to @what_is_an_apprenticeship, notice: 'What is an apprenticeship was successfully created.' }
        format.json { render json: @what_is_an_apprenticeship, status: :created, location: @what_is_an_apprenticeship }
      else
        format.html { render action: "new" }
        format.json { render json: @what_is_an_apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /what_is_an_apprenticeships/1
  # PUT /what_is_an_apprenticeships/1.json
  def update
    @what_is_an_apprenticeship = WhatIsAnApprenticeship.find(params[:id])

    respond_to do |format|
      if @what_is_an_apprenticeship.update_attributes(params[:what_is_an_apprenticeship])
        format.html { redirect_to @what_is_an_apprenticeship, notice: 'What is an apprenticeship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @what_is_an_apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /what_is_an_apprenticeships/1
  # DELETE /what_is_an_apprenticeships/1.json
  def destroy
    @what_is_an_apprenticeship = WhatIsAnApprenticeship.find(params[:id])
    @what_is_an_apprenticeship.destroy

    respond_to do |format|
      format.html { redirect_to what_is_an_apprenticeships_url }
      format.json { head :no_content }
    end
  end
end
