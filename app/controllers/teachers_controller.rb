class TeachersController < ApplicationController
    def index
        teachers = User.where( role: 'teacher' )
        render json: teachers
    end

    def create
        teacher = User.create( first_name: params[ :first_name ], last_name: params[ :last_name ], email: params[ :email ], role: 'student' );
        render json: teacher, status: :created
    end
end
