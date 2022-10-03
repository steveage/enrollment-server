class StudentsController < ApplicationController
    def index
        students = User.where(role: 'student')
        render json: students
    end
end
