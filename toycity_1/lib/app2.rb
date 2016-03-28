require 'json'
path = File.join(File.dirname(__FILE__), '../data/products.json')
file = File.read(path)
products_hash = JSON.parse(file)

# Print today's date

puts "                     _            _       "
puts "                    | |          | |      "
puts " _ __  _ __ ___   __| |_   _  ___| |_ ___ "
puts "| '_ \\| '__/ _ \\ / _` | | | |/ __| __/ __|"
puts "| |_) | | | (_) | (_| | |_| | (__| |_\\__ \\"
puts "| .__/|_|  \\___/ \\__,_|\\__,_|\\___|\\__|___/"
puts "| |                                       "
puts "|_|                                       "

puts " "
# For each product in the data set:
  # Print the name of the toy
products_hash["items"].each do |toy| ##works
  #output name
  toy_name = toy["title"]
  puts "****#{toy_name}****"

  #output price
  retail_price = toy["full-price"].to_f
  puts "The retail price of #{toy_name}: $#{retail_price}"
  
  #output total purchases
  total_purchase = toy["purchases"].count
  puts "Times #{toy_name} was purchased: #{total_purchase}"
  
  #output revenue per product
  total_revenue = 0
    toy["purchases"].each {|purchase| total_revenue += purchase["price"].to_f}
    puts "#{toy_name} generated $#{total_revenue} in sales"
  
  #output average price
  average_price = total_revenue/total_purchase
  puts "Average price: $#{average_price}"

  #output average % off retail
  discount = (1.00 - average_price/retail_price) * 100.00
  puts "Average discount off retail: #{discount.round(2)}%"
  
  #for easy reading
  puts " "
  puts " "
end



	puts " _                         _     "
	puts "| |                       | |    "
	puts "| |__  _ __ __ _ _ __   __| |___ "
	puts "| '_ \\| '__/ _` | '_ \\ / _` / __|"
	puts "| |_) | | | (_| | | | | (_| \\__ \\"
	puts "|_.__/|_|  \\__,_|_| |_|\\__,_|___/"
	puts

# For each brand in the data set:
by_brand = products_hash["items"].map {|toy| toy["brand"]}.uniq
# Print the name of the brand
by_brand.each do |brand|
  puts "****#{brand}*****"
 # Count and print the number of the brand's toys we stock
  total_stock = 0
  stock = products_hash["items"].select {|item| item["brand"] == brand}
  stock.each do |toy|
    total_stock += toy["stock"].to_i
  end
  puts "Stock count: #{total_stock} units"
  # Calculate and print the average price of the brand's toys
  brand_price = 0
  stock.each {|toy| brand_price += toy["full-price"].to_f}
  average_price = brand_price / stock.length
  puts "Average price: $#{average_price.round(2)} "
  
  # Calculate and print the total revenue of all the brand's toy sales combined
  total_sales = 0
  stock.each do |toy|
    toy["purchases"].each do |purchase|
      total_sales += purchase["price"].to_f
    end
  end 
  puts "Total Revenue: $#{total_sales.round(2)}"

  #For easy reading
  puts " "
  puts " "
end 