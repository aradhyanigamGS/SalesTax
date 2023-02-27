require_relative 'Items'
require_relative 'Input'
require_relative 'Tax'

class Main
  
  input = Input.new
  productsArr = input.input
  puts "#{productsArr}"


  @tax = 0.00
  @total_price = 0.00 
  @price = 0.00 
  @sales_tax = 0.00
  

  taxation = Tax.new
  taxation.tax(productsArr)
  puts "Sales Tax : #{(taxation.sales_tax).round(2)}"
  puts "Total : #{(taxation.total_price).round(2)}"
    
end
