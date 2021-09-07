class CoursesController < ApplicationController

  def index
    @courses = Course.all
    # @course_images = [
    #   { 'Scratch': "https://bit.ly/3yQL8sn" },
    #   { 'ScratchJr': "https://bit.ly/3tjTabX" },
    #   { 'App Inventor': "https://bit.ly/2WZ4u1b" },
    #   { 'Front End Programming': "https://bit.ly/3DUcIZ9" },
    #   { 'Python': "https://bit.ly/3yO40YY" },
    #   { 'Minecraft': "https://bit.ly/2X1PU9e" }
    # ]

    ## e.g. Scratch image => @course_images[0][key]
  end

  def show
    @course = Course.find(params[:id])
  end

  # private

  # def course_params
  #   params.require(:course).permit(:name, :day, :student_id, :teacher_id)
  # end
end
