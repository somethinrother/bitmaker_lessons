puts "EXERCISE 9"

# Part 1
students = {
            :cohort1 => 27,
            :cohort2 => 37,
            :cohort3 => 29,
           }

def cohort_display(cohort_hash)
  cohort_hash.each do |cohort, attendance|
    puts "#{cohort}: #{attendance} students"
  end
end

puts "2 ----------"
cohort_display(students)

# Part 3

students[:cohort4] = 43

puts "4 ----------"

puts students.keys

puts "5 ----------"

students_modified = students.map { |cohort, attendance| [cohort, attendance * 1.05] }.to_h
cohort_display(students_modified)

puts "6 ----------"

students.delete :cohort2
cohort_display(students)

puts "7 ----------"

def student_total(cohort_hash)
  student_count = 0
  cohort_hash.each do |cohort, attendance|
    student_count += attendance
  end
  puts student_count
end

student_total(students)

puts "8 ----------"

staff = {
        :instructors => 7,
        :admin => 5,
        :assistants => 4,
        :janitors => 6
        }

cohort_display(staff)
