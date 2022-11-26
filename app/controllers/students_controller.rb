class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    # byebug
    desc_grades = Student.all.order(grade: :desc)
    render json: desc_grades
  end
end
