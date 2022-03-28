require 'csv'
class DirectoryEntery

attr_accessor :name , :position , :active

    def initialize(name , position , active = true)
      @name = name
      @position = position
      @active = active
    end

    def save
      File.open('directory.csv' , 'a') do |entry|
        entry.write(self.to_csv)
      end
    end

    def to_csv
      CSV.generate do |csv|
        csv << [name , position , active]
      end
    end

    def self.list
      CSV.open('directory.csv', 'r') do |csv|
        display(csv.read)
      end
    end

    def self.display(list_of_entries)
      list_of_entries.each do |entry|
        p "#{entry[0]} - #{entry[1]} - #{entry[2]}}"
      end
    end
end

entry = DirectoryEntery.new("ahmed" , "dep head")
entry.save

entry2 = DirectoryEntery.new("amr" , "CEO", false)
entry2.save

DirectoryEntery.list
