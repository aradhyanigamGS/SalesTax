input = []

loop do 
  # puts "sdf"
  product = gets.chomp
  if product.nil? || product.empty?
    break
  end
  input.push(product)
end

# number = gets
# no_of_purchases = number.chomp 

# no_of_purchases = no_of_purchases.to_i

# for info in no_of_purchases do
#   product = gets
#   product = product.chomp
#   input.push(product)
# end
 
# puts input

tax = 0.00
total_price = 0.00 
price = 0.00 
sales_tax = 0.00


book = "book"
chocolate_bar = "chocolate bar"
box_of_chocolates = "box of chocolates"
box_of_imported_chocolates = "box of imported chocolates"
imported_box_of_chocolates = "imported box of chocolates"
packet_of_headache_pills = "packet of headache pills"

musicCD  = "music CD"
bottle_of_perfume = "bottle of perfume"


input.each do |productInfo| 
  proInfoArr = productInfo.split(" ")
  
  quantity = proInfoArr[0].to_i

  price = proInfoArr[proInfoArr.length - 1].to_f

  # puts proInfoArr
  # puts quantity
  # puts price
  # puts "tax #{tax}"
  # puts "price #{price}"
  # puts "sales_tax #{sales_tax}"
  # puts "total_price #{total_price}"

  if productInfo.include? book
    
    if productInfo.include? "imported" 
      tax =0
      tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price
      
      puts  "#{quantity} imported book : #{price.round(2)}"
    else

      tax =0
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} book : #{price.round(2)}"
    end
  end

  if productInfo.include? chocolate_bar

    if productInfo.include? "imported"
      tax =0
      tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price
      
      puts "#{quantity} imported chocolate bar : #{price.round(2)}"
    else
      tax =0
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} chocolate bar : #{price.round(2)}"
    end
  end

  if productInfo.include? box_of_chocolates

    if productInfo.include? "imported"
     
      tax =0
      tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} imported box of chocolates : #{price.round(2)}"
    else

      tax =0
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} box of chocolates : #{price.round(2)}"
    end
  end
  
  if productInfo.include? box_of_imported_chocolates

    if productInfo.include? "imported"
     
      tax = 0 
      tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} imported box of chocolates : #{price.round(2)}"
    else
      tax = 0
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} box of chocolates : #{price.round(2)}"
    end
  end
  

  # if productInfo.include? imported_box_of_chocolates

  #   if productInfo.include? "imported"
     
  #     tax = price * 0.05
  #     price += tax 
  #     sales_tax += tax
  #     total_price += price

  #     puts "#{quantity} imported box of chocolates : #{price.round(2)}"
  #   else

  #     price += tax 
  #     sales_tax += tax
  #     total_price += price

  #     puts "#{quantity} box of chocolates : #{price.round(2)}"
  #   end
  # end
  

  if productInfo.include? packet_of_headache_pills
    
    if productInfo.include? "imported"
      
      tax =0
      tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} imported packets of headache pills : #{price.round(2)}"
    else

      tax =0
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} packet of headache pills : #{price.round(2)}"
    end
  end

  if productInfo.include? musicCD
    
    if productInfo.include? "imported"
      tax = 0
      tax = price * 0.1 + price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} imported music CD : #{price.round(2)}"
    else
      tax = 0
      tax = price * 0.1
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} music CD : #{price.round(2)}"
    end
  end

  if productInfo.include? bottle_of_perfume
    
    if productInfo.include? "imported"
      tax = 0
      tax = price * 0.1 + price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} imported bottle of perfume : #{price.round(2)}"
    else
      tax = 0
      tax = price * 0.1
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} bottle of perfume : #{price.round(2)}"
    end
  end

  # puts productInfo
end


puts "Sales Tax : #{sales_tax.round(2)}"
puts "Total : #{total_price.round(2)}"