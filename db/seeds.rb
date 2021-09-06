# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.delete_all
Student.delete_all
Teacher.delete_all

## replace with new data from ClickUp

# students = [
#   { first_name: "Ellen", last_name: "Lau" },
#   { first_name: "Bennis", last_name: "Yiu"} ,
#   { first_name: "Spencer", last_name: "Cheung" },
#   { first_name: "Vanessa", last_name: "Auyeung" },
#   { first_name: "Billy", last_name: "Wong" },
# ]

Student.create!(students)
puts "#{students.length()} students have been created!"

## replace with new data from ClickUp

# teachers = [
#   { first_name: "Kelvin", last_name: "Chan", major: "Computer Science" },
#   { first_name: "Mark", last_name: "Leung", major: "Engineering" },
#   { first_name: "Queena", last_name: "Ling", major: "Education" },
#   { first_name: "Tommie", last_name: "Lo", major: "Economics" },
#   { first_name: "Kenneth", last_name: "She", major: "Computer Science" },
# ]

Teacher.create!(teachers)
puts "#{teachers.length()} teachers have been created!"

names = ["Scratch", "ScratchJr", "App Inventor", "Front End Programming",  "Python", "Minecraft"]
days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
times = ["09:00", "11:00", "12:00", "13:30", "14:00", "15:30", "16:00"]

stud_id_arr = Student.all.pluck(:id)
t_id_arr = Teacher.all.pluck(:id)

courses = [
  { name: names.sample, day: days.sample, time: times.sample, student_id: stud_id_arr.sample, teacher_id: t_id_arr.sample },
  { name: names.sample, day: days.sample, time: times.sample, student_id: stud_id_arr.sample, teacher_id: t_id_arr.sample },
  { name: names.sample, day: days.sample, time: times.sample, student_id: stud_id_arr.sample, teacher_id: t_id_arr.sample },
  { name: names.sample, day: days.sample, time: times.sample, student_id: stud_id_arr.sample, teacher_id: t_id_arr.sample },
  { name: names.sample, day: days.sample, time: times.sample, student_id: stud_id_arr.sample, teacher_id: t_id_arr.sample },
  { name: names.sample, day: days.sample, time: times.sample, student_id: stud_id_arr.sample, teacher_id: t_id_arr.sample },
  { name: names.sample, day: days.sample, time: times.sample, student_id: stud_id_arr.sample, teacher_id: t_id_arr.sample },
]

Course.create!(courses)
puts "#{courses.length()} courses have been created!"
