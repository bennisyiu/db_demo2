class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  # def show
  # end

  # def create
  # end
end
