old_sync = $stdout.sync
$stdout.sync = true
#require './lib/sudentdirectory.rb'
#Student Directory - Friday Challenge Week 2
#List of students enrollment
#List of input students details(name,gender,age)

puts "Student Directory"
puts "Press Enter To Begin Listing"
intro = gets.chomp

def listing(name)
list =[name,gender,age]
lists = [{ name: 'Tasha', gender: 'female', age: 20}, { name: 'carlton', gender: 'male', age: 18},
        { name: 'fairuz', gender: 'male', age: 21}, { name: 'amin', gender: 'male', age: 25},
        { name: 'moon', gender: 'male', age: 23}, { name: 'wendy', gender: 'female', age: 22}]

def students(list)
  list.each do |details|
    sentence << "Student Name #{students[:name]} Gender #{students[:gender]} Age #{students[:age]} years old"
    print "Student Name #{students[:name]} Gender #{students[:gender]} Age #{students[:age]} years old"
  end
end
end
