require_relative '2.0.person'

# p Person.read 5763 #>>>> use with person first

# person = Person.new("lisa", "Jones") #create
# p person.create #create

# p Person.read 5424 #read

# Person.read 5424 #update
# person.last_name = "Robert"  #upsate
# p person.update #update

# p Person.destroy 5424  #delete

person1 =Person.new("Bob", "Thompson")
person1.create
person1.last_name = "Jones"
person1.create
