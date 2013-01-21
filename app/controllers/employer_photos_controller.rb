class EmployerPhotosController < ApplicationController
  # GET /employer_photos
  # GET /employer_photos.json
  load_and_authorize_resource
  def index
    @employer_photos = EmployerPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employer_photos }
    end
  end

  # GET /employer_photos/1
  # GET /employer_photos/1.json
  def show
    @employer_photo = EmployerPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employer_photo }
    end
  end

  # GET /employer_photos/new
  # GET /employer_photos/new.json
  def new
    @employer_photo = EmployerPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employer_photo }
    end
  end

  # GET /employer_photos/1/edit
  def edit
    @employer_photo = EmployerPhoto.find(params[:id])
  end

  # POST /employer_photos
  # POST /employer_photos.json
  def create
    @employer_photo = EmployerPhoto.new(params[:employer_photo])

    respond_to do |format|
      if @employer_photo.save
        format.html { redirect_to @employer_photo, notice: 'Employer photo was successfully created.' }
        format.json { render json: @employer_photo, status: :created, location: @employer_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @employer_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employer_photos/1
  # PUT /employer_photos/1.json
  def update
    @employer_photo = EmployerPhoto.find(params[:id])

    respond_to do |format|
      if @employer_photo.update_attributes(params[:employer_photo])
        format.html { redirect_to @employer_photo, notice: 'Employer photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employer_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employer_photos/1
  # DELETE /employer_photos/1.json
  def destroy
    @employer_photo = EmployerPhoto.find(params[:id])
    @employer_photo.destroy

    respond_to do |format|
      format.html { redirect_to employer_photos_url }
      format.json { head :no_content }
    end
  end
end
