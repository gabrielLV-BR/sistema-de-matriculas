class SchoolsController < ApplicationController
  # GET /
  def index
    @schools = School.all
  end

  # GET /:id/
  def show
    @school = School.find params[:id]
  end

  # GET /new/
  def new
    @school = School.new
  end

  # POST /
  def create
    @school = School.new school_params

    if @school.save then
      redirect_to @school
    else
      redirect_back status: :unprocessable_entity, fallback_location: schools_url
    end
  end

  # GET /:id/edit
  def edit
    @school = School.find params[:id]
  end

  # PUT,PATCH /:id
  def update
    @school = School.find params[:id]

    if @school.update school_params
      redirect_to @school
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /:id
  def destroy
    @school = School.find params[:id]
    @school.delete

    redirect_to schools_url
  end

  #
  #
  private

  def school_params
    params.require(:school).permit(:name, :address, :telephone, :kind, :regimen)
  end
end
