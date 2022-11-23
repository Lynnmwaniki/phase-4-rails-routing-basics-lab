class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end
    def grades
        #     # grades =Grade.all
        #     # render json: grades
        students = Student.all.order(grade: :desc)
           render json: students
            
    end
    def highest_grade
         students = Student.order(grade: :desc).first
            render json: students
    end
    
end
