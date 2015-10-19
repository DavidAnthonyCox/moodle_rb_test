#base.rb
require 'yaml'
require 'moodle_rb'

MoodleRb.verify

# cfg = YAML.load(File.read("config.yaml"))
# moodle = MoodleRb.new(cfg["token"], cfg["site"])

# puts moodle.site_info

# (1..20).each do |i|
#   puts "putsing #{i}!!!!!!"
#   puts moodle.grades.by_course(4,i)
# end

# puts moodle.courses.enrolled_users(4)

# my_students = []
# moodle.courses.enrolled_users(4).map do |this_student| 
#   my_students<<this_student["id"]
# end
# puts "All Students: "
# puts my_students

# my_grades = moodle.grades.by_course(4,my_students)[0]["grades"]
# my_grades.each do |g|
#   puts "Student #" + g["userid"].to_s + " got " + g["str_grade"] + "% on the quiz."
# end

# fails = []
# my_grades.each do |this_grade|
#   this_grade["str_grade"].to_f < 70.0 ? fails<<this_grade : next
# end
# puts fails

# fail_ids = fails.map do |f| 
#   f["userid"]
# end
# puts "Unfortunate Students: "
# puts fail_ids

# moodle.message.send_templated("some_haml", fail_ids)

#TODO:
=begin
Make some courses and quizzes.
Make 10 students and have them pass or fail some quizzes.

def get_grades(some_course)
  grades = moodle.grades.by_course(some_course)[0]
end

def get_failures
 all_grades = get_grades(4)
 fails = []

 all_grades.each do |this_grade|
 if this_grade["str_long_grade"].to_f >= 70.0
   next
 else 
   fails<<this_grade

  ^ Once that's done, send a template message to the fail grades.
  
=end