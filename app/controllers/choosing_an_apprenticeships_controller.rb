class ChoosingAnApprenticeshipsController < ApplicationController
  # GET /choosing_an_apprenticeships
  # GET /choosing_an_apprenticeships.json
  load_and_authorize_resource
  def index
    @choosing_an_apprenticeships = ChoosingAnApprenticeship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @choosing_an_apprenticeships }
    end
  end

  # GET /choosing_an_apprenticeships/1
  # GET /choosing_an_apprenticeships/1.json
  def show
    @choosing_an_apprenticeship = ChoosingAnApprenticeship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @choosing_an_apprenticeship }
    end
  end

  # GET /choosing_an_apprenticeships/new
  # GET /choosing_an_apprenticeships/new.json
  def new
    @choosing_an_apprenticeship = ChoosingAnApprenticeship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @choosing_an_apprenticeship }
    end
  end

  # GET /choosing_an_apprenticeships/1/edit
  def edit
    @choosing_an_apprenticeship = ChoosingAnApprenticeship.find(params[:id])
  end

  # POST /choosing_an_apprenticeships
  # POST /choosing_an_apprenticeships.json
  def create
    @choosing_an_apprenticeship = ChoosingAnApprenticeship.new(params[:choosing_an_apprenticeship])

    respond_to do |format|
      if @choosing_an_apprenticeship.save
        format.html { redirect_to @choosing_an_apprenticeship, notice: 'Choosing an apprenticeship was successfully created.' }
        format.json { render json: @choosing_an_apprenticeship, status: :created, location: @choosing_an_apprenticeship }
      else
        format.html { render action: "new" }
        format.json { render json: @choosing_an_apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /choosing_an_apprenticeships/1
  # PUT /choosing_an_apprenticeships/1.json
  def update
    @choosing_an_apprenticeship = ChoosingAnApprenticeship.find(params[:id])

    respond_to do |format|
      if @choosing_an_apprenticeship.update_attributes(params[:choosing_an_apprenticeship])
        format.html { redirect_to @choosing_an_apprenticeship, notice: 'Choosing an apprenticeship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @choosing_an_apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choosing_an_apprenticeships/1
  # DELETE /choosing_an_apprenticeships/1.json
  def destroy
    @choosing_an_apprenticeship = ChoosingAnApprenticeship.find(params[:id])
    @choosing_an_apprenticeship.destroy

    respond_to do |format|
      format.html { redirect_to choosing_an_apprenticeships_url }
      format.json { head :no_content }
    end
  end
end
