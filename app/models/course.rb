class Course < ApplicationRecord
    belongs_to :semester
    belongs_to :teacher
    has_many :enrollments
    has_many :students, through: :enrollments
end