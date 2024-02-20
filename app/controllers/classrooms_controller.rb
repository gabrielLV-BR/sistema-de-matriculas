class ClassroomsController < ApplicationController
  before_action :get_school
  before_action :set_classroom, only: [:show, :edit, :update, :delete]

  def index
    @classrooms = @school.classrooms
  end

  def show
  end

  def create
    @classroom = @school.classrooms.build classroom_params

    if @classroom.save then
      redirect_to @school
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @classroom = @school.classrooms.build
  end

  def edit
  end

  def update
    if @clasroom.update classroom_params then
      redirect_to @school
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete
    @classroom = Classroom.find params[:id]
    @classroom.delete

    redirect_to schools_url
  end

  private

  def get_school
    @school = School.find params[:school_id]
  end

  def set_classroom
    @classroom = @school.classrooms.find params[:id]
  end

  def classroom_params
    params.require(:classroom).permit(:name, :year, :capacity, :school_id)
  end
end
