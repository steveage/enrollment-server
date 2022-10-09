class EnrollmentsController < ApplicationController
    def index
        enrollments = Enrollment.all
        render json: enrollments
    end

    def create
        enrollment = Enrollment.create(  user_id: params[ :user_id ], course_id: params[ :course_id ], score: params[ :score ] )
        render json: enrollment, status: :created
    end
end
