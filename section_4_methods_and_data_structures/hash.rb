# a = {} 

# p a 

# b = Hash.new 

# p b   

# c = {"food" => "Pizza", "car" => "Ferrari"}

# p c

# -------------------------------keys and values-------------------------

# data = [
#     {
#         name: :ahmed,             # new syntax using symbols
#         "profission" => "programmer"  # old syntax using hash roket
#     },
#     {
#         name: :hassan,
#         profission: :artist
#     }
# ]

# person1 = data[0] 

# person2 = data[1] 

# def get_person_name(person)
#     if person[:profission] == :artist
#         puts "#{person[:name]} is an #{person[:profission]}"
#     end
# end

# get_person_name(person1)

# get_person_name(person2)


# # symbols are fast retrieving data, light than strings, but unchangable (can not be used in case of changing)

# p "ahmed".to_sym

# --------------------------------Retrieving data from hash----------------------------------------------

data = {
    name: "Ahmed",
    profission: "Engineer",

}

# p data[:name]

# p data[:first_name] #it will not give error if not existing.will give nil.

# p data.fetch(:first_name)  #fetch method will give error if not existing.

# p data.has_key?(:name)

# p data.key("Ahmed")

# p data[:name]

# -----------------------------------------Hash Manupilation-----------------------------------------------
ahmed = {
    name: "Ahmed",
    profission: "Engineer",

}

job = {

    position: "Senior",
    profission: "Artist",
    location: "Egypt"
}


changed = ahmed.merge(job)

changed.delete(:profission)

p changed

def question1
    my_breakfast = {drink: "Coffee", eggs: "Scrambled", side: "Bacon"}
    ## Write your code below, 1 line
   my_breakfast[:side] = "grapefruit"
    puts my_breakfast
  end

  question1