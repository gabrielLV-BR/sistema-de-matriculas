class SchoolsController < ApplicationController
  def index
    @schools = School.all
    @schools.each do |s|
      puts "PRINTING SCHOOL YAYYYY"
      puts s.attributes
      puts "\n\n"
    end
  end

  def show
    @school = School.find params[:id]
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new school_params

    if @school.save then
      redirect_to @school
    else
      redirect_back status: :unprocessable_entity, fallback_location: schools_url
    end
  end

  private

  def school_params
    params.require(:school).permit(:name, :address, :telephone, :kind, :regimen)
  end
end
