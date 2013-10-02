require_relative 'app'

puts "Cohort methods:"
p Cohort.find(3)[:name] == "Delta" # => true
p Cohort.where("name = ?", "Alpha").first[:id] == 1 # => true
p Cohort.find(7)[:name] == "Eta" # => true

puts
puts "Student methods:"
p Student.all.first[:email] == "ettie_kohler@ebert.biz" # => true
p Student.where("first_name = ?", "Jesus").first[:id] == Student.all.last[:id] # => true
puts
puts "Creating santino:"
santino = Student.all.first
p santino.new_record? == false # =>
p santino[:id] == 1 # => true


