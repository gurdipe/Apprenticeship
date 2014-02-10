class ApprenticeshipTypesController < ApplicationController
  # GET /apprenticeship_types
  # GET /apprenticeship_types.json
  load_and_authorize_resource
  def index
    @apprenticeship_types = ApprenticeshipType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apprenticeship_types }
      format.xml { render xml: @apprenticeship_types }
    end
  end

  # GET /apprenticeship_types/1
  # GET /apprenticeship_types/1.json
  def show
    @apprenticeship_type = ApprenticeshipType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apprenticeship_type }
      format.xml { render xml: @apprenticeship_type  }
      # format.docx { render word: @apprenticeship_type  }
      # file = Rails.root.join("public","resources", "test.docx");
      format.docx { send_file @apprenticeship_type.render_to_word, :disposition => 'attachment'  }
      # format.docx { send_data @apprenticeship_type.render_to_word(), :disposition => 'attachment'  }

      # "#{RAILS_ROOT}/public/resources/newdoc.docx",
      # :filename=> "newdoc.docx",
      # :type=>mime_type)

    end
  end

  # GET /apprenticeship_types/new
  # GET /apprenticeship_types/new.json
  def new
    @apprenticeship_type = ApprenticeshipType.new
    @careers = Career.all
    @subjects = Subject.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apprenticeship_type }
    end
  end

  # GET /apprenticeship_types/1/edit
  def edit
    @apprenticeship_type = ApprenticeshipType.find(params[:id])
    @careers = Career.all
    @subjects = Subject.all
  end

  # POST /apprenticeship_types
  # POST /apprenticeship_types.json
  def create
    @apprenticeship_type = ApprenticeshipType.new(params[:apprenticeship_type])

    respond_to do |format|
      if @apprenticeship_type.save
        format.html { redirect_to @apprenticeship_type, notice: 'Apprenticeship type was successfully created.' }
        format.json { render json: @apprenticeship_type, status: :created, location: @apprenticeship_type }
      else
        format.html { render action: "new" }
        format.json { render json: @apprenticeship_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apprenticeship_types/1
  # PUT /apprenticeship_types/1.json
  def update
    @apprenticeship_type = ApprenticeshipType.find(params[:id])

    respond_to do |format|
      if @apprenticeship_type.update_attributes(params[:apprenticeship_type])
        format.html { redirect_to @apprenticeship_type, notice: 'Apprenticeship type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apprenticeship_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apprenticeship_types/1
  # DELETE /apprenticeship_types/1.json
  def destroy
    @apprenticeship_type = ApprenticeshipType.find(params[:id])
    @apprenticeship_type.destroy

    respond_to do |format|
      format.html { redirect_to apprenticeship_types_url }
      format.json { head :no_content }
    end
  end

 
end
