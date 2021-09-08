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

students = [
  { first_name: "phil", last_name: "mccracken" },
  { first_name: "ben", last_name: "dover"},
  { first_name: "anita", last_name: "dick" },
  { first_name: "Ke", last_name: "Blob" },
  { first_name: "Mike", last_name: "Hawk" },
  { first_name: "kevin", last_name: "bacon" },
  { first_name: "ceral", last_name: "morning" },
  { first_name: "Ellen", last_name: "Lau" },
]

Student.create!(students)
puts "#{students.length()} students have been created!"

## replace with new data from ClickUp

teachers = [
  { first_name: "bennis", last_name: "yiu", major: "SQL" },
  { first_name: "Taylor", last_name: "Swift", major: "Music" },
  { first_name: "Ehsan", last_name: "Ayaz", major: "IT" },
  { first_name: "Ken", last_name: "Li", major: "tolibudibudouchu" },
  { first_name: "Kevin", last_name: "Lee", major: "Soci fucking ology" },
  { first_name: "Mark", last_name: "Liang", major: "dropout" },
  { first_name: "ben", last_name: "Yiu", major: "rubyonrails" },
  { first_name: "my", last_name: "stomach", major: "eating" },
]

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
