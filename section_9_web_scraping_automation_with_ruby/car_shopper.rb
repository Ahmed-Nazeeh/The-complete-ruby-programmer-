require 'httparty'
require 'nokogiri'
require 'pp' #pretty printing
def car_shopper

  response = HTTParty.get('https://code.evgenyrahman.com/rubycourse/carlist.html')
  parsed_html = Nokogiri::HTML(response.body)
  car_listing = parsed_html.css('.card.car')
def convert_price(price)
  price.gsub('$','').gsub(',','').to_i
end
  cars = car_listing.map do |each_car|
          { make:   each_car.css('.make').text,
            year:   each_car.css('.year').text.to_i,
            price:  convert_price(each_car.css('.price').text),
            rating: each_car.css('.star.rating').attribute("data-rating").value.to_i
          }
  end
  cars.select! do |car|     #for filtering the data
    (car[:price] < 30000) && (car[:year] > 2014) && (car[:rating] > 3)
    end
  File.open("car_listing.json", "wb") do |f|
    f << cars.to_json
      end
   puts "Results were written to file!"
end

car_shopper
