class TrainingProvidersController < ApplicationController
  # GET /training_providers
  # GET /training_providers.json
  def index
    @training_providers = TrainingProvider.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @training_providers }
    end
  end

  # GET /training_providers/1
  # GET /training_providers/1.json
  def show
    @training_provider = TrainingProvider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @training_provider }
    end
  end

  # GET /training_providers/new
  # GET /training_providers/new.json
  def new
    @training_provider = TrainingProvider.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @training_provider }
    end
  end

  # GET /training_providers/1/edit
  def edit
    @training_provider = TrainingProvider.find(params[:id])
  end

  # POST /training_providers
  # POST /training_providers.json
  def create
    @training_provider = TrainingProvider.new(params[:training_provider])

    respond_to do |format|
      if @training_provider.save
        format.html { redirect_to @training_provider, notice: 'Training provider was successfully created.' }
        format.json { render json: @training_provider, status: :created, location: @training_provider }
      else
        format.html { render action: "new" }
        format.json { render json: @training_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /training_providers/1
  # PUT /training_providers/1.json
  def update
    @training_provider = TrainingProvider.find(params[:id])

    respond_to do |format|
      if @training_provider.update_attributes(params[:training_provider])
        format.html { redirect_to @training_provider, notice: 'Training provider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @training_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_providers/1
  # DELETE /training_providers/1.json
  def destroy
    @training_provider = TrainingProvider.find(params[:id])
    @training_provider.destroy

    respond_to do |format|
      format.html { redirect_to training_providers_url }
      format.json { head :no_content }
    end
  end
end
