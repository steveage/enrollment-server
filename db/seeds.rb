# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🌱 Seeding school..."
semester1 = Semester.create( year: 2022, period: 'spring' )
semester2 = Semester.create( year: 2022, period: 'fall' )

teacher1 = Teacher.create( first_name: 'Teacher 1 first', last_name: 'Teacher 1 last', email: 'teacher1@mail.com', department: 'Mathematics' )
teacher2 = Teacher.create( first_name: 'Teacher 2 first', last_name: 'Teacher 2 last', email: 'teacher2@mail.com', department: 'Physics' )

student1 = Student.create( first_name: 'Student 1 first', last_name: 'Student 1 last', email: 'student1@mail.com' )
student2 = Student.create( first_name: 'Student 2 first', last_name: 'Student 2 last', email: 'student2@mail.com' )

course1 = Course.create( code: 'CS101', name: 'Intro to programming.', section: "1", teacher: teacher1, semester: semester1 )
course2 = Course.create( code: 'CS101', name: 'Intro to programming.', section: "2", teacher: teacher2, semester: semester1 )
course3 = Course.create( code: 'MA201', name: 'Algebra Level 1', section: "1", teacher: teacher1, semester: semester1 )
course4 = Course.create( code: 'PHYS104', name: 'Thermodynamics', section: "1", teacher: teacher2, semester: semester1 )
course5 = Course.create( code: 'COM102', name: 'Foundamentals of Communication', section: "1", teacher: teacher1, semester: semester2 )

enrollment1 = Enrollment.create( student: student1, course: course1, score: "A" )
enrollment2 = Enrollment.create( student: student1, course: course3, score: "B" )
enrollment3 = Enrollment.create( student: student1, course: course5 )

enrollment4 = Enrollment.create( student: student2, course: course2, score: "A" )
enrollment5 = Enrollment.create( student: student2, course: course3, score: "A" )
enrollment6 = Enrollment.create( student: student2, course: course4, score: "C" )
enrollment7 = Enrollment.create( student: student2, course: course5 )
puts "✅ Done seeding!"