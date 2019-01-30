require 'faker'


#Creation Lecture
10.times do |index|
    session = Session.create(name: Faker::Science.element)
end

#Creation Session
10.times do |index|
    student = Student.create(name: Faker::University.name)
    student.session=Session.first
    student.save
end

