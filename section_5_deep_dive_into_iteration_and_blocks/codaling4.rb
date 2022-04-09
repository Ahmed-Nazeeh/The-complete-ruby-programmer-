products_arr = [
                   {catergory: :shoes, name: "Special Sandals", brand: "EZ", price: 10.0},
                   {catergory: :clothes, name: "Hatty`s Hat", brand: "Hatty`s", price: 20.0},
                   {catergory: :electronics, name: "Magnasound", brand: "Maximum", price: 100.0},
                   {catergory: :shoes, name: "High Heels", brand: "Pricey", price: 3.0}
               ]


def filter(products_arr, filter_type)
    res =[]
    products_arr.each do |hash|

         hash.each do |k,v|
             res.push(hash) if v == filter_type 
         end
    end
    if res.empty?
        p "not valid filter, try something else ..." 
    else
        p res
    end
end

filter(products_arr, :shoes)
100.times {|i| print "-"}
puts
100.times {|i| print "-"}
puts
filter(products_arr, :electronics)
100.times {|i| print "-"}
puts
100.times {|i| print "-"}
puts
filter(products_arr, :clothes)
