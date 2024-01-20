class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find params[:id]
  end

  def new

  end

  def create

  end
end
