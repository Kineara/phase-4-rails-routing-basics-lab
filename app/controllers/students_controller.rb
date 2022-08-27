class StudentsController < ApplicationController
  def index 
    students = Student.all 
    render json: students
  end 

  def grades 
    grades = Student.all
    
    render json: grades.sort_by { |student| -student.grade }
  end

  def highest_grade 
    student = Student.all.sort_by { |student| -student.grade }
    render json: student.first
  end
end
