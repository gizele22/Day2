old_sync = $stdout.sync
$stdout.sync = true
#require './wd/hash_array.rb'

# age = [6,2,36,20,54]

def array(age)
  #print "before sorting: #{age}"
  #puts
  #print "after sorting: #{age.sort}"
  age.sort
end
# array(age)
list = [{ name: 'wendy', age: 20 }, { name: 'skyler', age: 2 }]
#iterate array
def people(list)
  sentence = []

  list.each do |details|
    #puts "My name is #{details[:name]} I am #{details[:age]} years old"
    sentence << "My name is #{details[:name]} I am #{details[:age]} years old"
    #puts "My name is #{details[:name],[:age]}"
  end
end

#method(players)
#OUTPUT (DONT have to PUTS)
#@nike = ['Zlatan', 'Muller', 'Roberts']
#@adidas = ['Walcott', 'Rossi']

players = [{ name: 'Zlatan', brand: 'Nike'}, { name: 'Walcott', brand: 'ADIDAS'},
           { name: 'Roberts', brand: 'nike'}, { name: 'Hamilton', brand: 'puma'},
           { name: 'Rossi', brand: 'adidas'}, { name: 'Muller', brand: 'nike'},
           { name: 'Schwans', brand: 'PUMA'}, { name: 'Miller', brand: 'UMBRO'}]

def football(players)
  nike = []
  adidas = []

  players.each do |sponsor|
    if sponsor[:brand].upcase == "NIKE"
      nike << sponsor[:name]
    elsif sponsor[:brand].upcase == 'ADIDAS'
      adidas << sponsor[:name]
    end
  end
  {nike: nike, adidas: adidas}
end
football(players)
print nike
print adidas
