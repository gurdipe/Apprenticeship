class TypesOfApprenticeshipsController < ApplicationController
  # GET /types_of_apprenticeships
  # GET /types_of_apprenticeships.json
  def index
    @types_of_apprenticeships = TypesOfApprenticeship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @types_of_apprenticeships }
    end
  end

  # GET /types_of_apprenticeships/1
  # GET /types_of_apprenticeships/1.json
  def show
    @types_of_apprenticeship = TypesOfApprenticeship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @types_of_apprenticeship }
    end
  end

  # GET /types_of_apprenticeships/new
  # GET /types_of_apprenticeships/new.json
  def new
    @types_of_apprenticeship = TypesOfApprenticeship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @types_of_apprenticeship }
    end
  end

  # GET /types_of_apprenticeships/1/edit
  def edit
    @types_of_apprenticeship = TypesOfApprenticeship.find(params[:id])
  end

  # POST /types_of_apprenticeships
  # POST /types_of_apprenticeships.json
  def create
    @types_of_apprenticeship = TypesOfApprenticeship.new(params[:types_of_apprenticeship])

    respond_to do |format|
      if @types_of_apprenticeship.save
        format.html { redirect_to @types_of_apprenticeship, notice: 'Types of apprenticeship was successfully created.' }
        format.json { render json: @types_of_apprenticeship, status: :created, location: @types_of_apprenticeship }
      else
        format.html { render action: "new" }
        format.json { render json: @types_of_apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /types_of_apprenticeships/1
  # PUT /types_of_apprenticeships/1.json
  def update
    @types_of_apprenticeship = TypesOfApprenticeship.find(params[:id])

    respond_to do |format|
      if @types_of_apprenticeship.update_attributes(params[:types_of_apprenticeship])
        format.html { redirect_to @types_of_apprenticeship, notice: 'Types of apprenticeship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @types_of_apprenticeship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /types_of_apprenticeships/1
  # DELETE /types_of_apprenticeships/1.json
  def destroy
    @types_of_apprenticeship = TypesOfApprenticeship.find(params[:id])
    @types_of_apprenticeship.destroy

    respond_to do |format|
      format.html { redirect_to types_of_apprenticeships_url }
      format.json { head :no_content }
    end
  end
end
