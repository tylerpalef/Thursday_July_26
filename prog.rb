require_relative 'student'
require_relative 'professor'
require_relative 'magicDepartment'
require_relative 'scienceDepartment'

snape = MagicDepartment.new("Severus", "Snape")
tesla = ScienceDepartment.new("Nicola", "Tesla")

p tesla.light?("wave")

# snape = Professor.new("Severus", "Snape")
stewie = Student.new("Stewie", "Griffin")
billy = Student.new("Billy", "Graham")
tyler = Student.new("Tyler", "Palef")
renee = Student.new("Renee", "Chow")
david = Student.new("David", "Ma")

students = []

students << stewie
students << billy
students << tyler
students << renee
students << david

5.times do stewie.learn
end
2.times do snape.teach(stewie)
end

2.times do snape.teachCohort(students)
end
# stewie.slack
p students
puts "David's knowledge level is #{david.knowledge_level}"


# p stewie.full_name
