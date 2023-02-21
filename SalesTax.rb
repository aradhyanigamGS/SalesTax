input = []

loop do 
  # puts "sdf"
  product = gets.chomp
  if product.nil? || product.empty?
    break
  end
  input.push(product)
end
 
# puts input

tax = 0.00
total_price = 0.00 
price = 0.00 
sales_tax = 0.00


book = "book"
chocolate_bar = "chocolate bar"
box_of_chocolates = "box of chocolates"
packets_of_headache_pills = "packets of headache pills"

musicCD  = "music CD"
bottle_of_perfume = "bottle of perfume"


for productInfo in input do 
  proInfoArr = productInfo.split(" ")
  
  quantity = proInfoArr[0].to_i

  price = proInfoArr[productInfo.length - 1].to_f
  
  if productInfo.include? book
    
    price += tax 
    sales_tax += tax
    total_price += price

    if productInfo.include ? "imported"
      # tax = price * 0.05
      
      :price += tax 
      sales_tax += tax
      total_price += price
      puts quantity + "imported book :" +price.round(2)
    else
      puts "#{quantity} book : #{price.round(2)}"
    end
  end

  if productInfo.include? chocolate_bar
     
    price += tax 
    sales_tax += tax
    total_price += price

    if productInfo.include ? "imported"

      # tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price
      
      puts "#{quantity} imported chocolate bar : #{price.round(2)}"
    else
      puts "#{quantity} chocolate bar : #{price.round(2)}"
    end
  end

  if productInfo.include? box_of_chocolates
     
    price += tax 
    sales_tax += tax
    total_price += price

    if productInfo.include ? "imported"

      tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} imported box of chocolates : #{price.round(2)}"
    else
      puts "#{quantity} box of chocolates : #{price.round(2)}"
    end
  end
  

  if productInfo.include? packets_of_headache_pills
     
    price += tax 
    sales_tax += tax
    total_price += price

    if productInfo.include ? "imported"
      
      tax = price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price

      puts "#{quantity} imported packets of headache pills : #{price.round(2)}"
    else
      puts "#{quantity} packets of headache pills : #{price.round(2)}"
    end
  end

  if productInfo.include? musicCD
    
    if productInfo.include ? "imported"
      tax = price * 0.1 + price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} imported music CD : #{price.round(2)}"
    else
      tax = price * 0.1
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} music CD : #{price.round(2)}"
    end
  end

  if productInfo.include? bottle_of_perfume
    
    if productInfo.include ? "imported"
      tax = price * 0.1 + price * 0.05
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} imported bottle of perfume : #{price.round(2)}"
    else
      tax = price * 0.1
      price += tax 
      sales_tax += tax
      total_price += price
      puts "#{quantity} bottle of perfume : #{price.round(2)}"
    end
  end
end


puts "Sales Tax : #{sales_tax}"
puts "Total : #{total_price}"