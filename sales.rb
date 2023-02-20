input = gets

inputArr = input.split(" ")

price = inputArr[inputArr.length - 1].to_f
quantity = inputArr[0].to_i

book = "book"
chocolate_bar = "chocolate bar"
box_of_chocolates = "box of chocolates"
packets_of_headache_pills = "packets of headache pills"

musicCD  = "music CD"
bottle_of_perfume = "bottle of perfume"

imported = false 

total_price = 0 
tax = 0 
total_tax = 0 

if input.include? book
  tax = 0 
  price += tax
  total_tax += tax 
  total_price = price
  if input.include? "imported"
    imported = true
    puts "#{quantity} imported book : #{price}"
    puts "Sales Tax: #{tax}"
  else
    puts "#{quantity} book : #{price}"
    puts "Sales Tax: #{tax}"
  end
end

if input.include? chocolate_bar
  sales_tax = 0 
  price += tax
  total_tax += tax 
  total_price = price

  if input.include? "imported"
    imported = true
    puts "#{quantity} imported chocolate bar: #{price}"
    puts "Sales Tax: #{tax}"
  else
    puts "#{quantity} chocolate bar : #{price}"
    puts "Sales Tax: #{tax}"
  end
end


if input.include? box_of_chocolates
  sales_tax = 0 
  price += tax
  total_tax += tax 
  total_price = price

  if input.include? "imported"
    imported = true
    puts "#{quantity} imported box of chocolates : #{price}"
    puts "Sales Tax: #{tax}"
  else
    puts "#{quantity} box of chocolates : #{price}"
    puts "Sales Tax: #{tax}"
  end
end

if input.include? packets_of_headache_pills
  tax = 0 
  price += tax
  total_tax += tax 
  total_price = price

  if input.include? "imported"
    imported = true
    puts "#{quantity} imported packets of headache pills: #{price}"
    puts "Sales Tax: #{tax}"
  else
    puts "#{quantity} packets of headache pills : #{price}"
    puts "Sales Tax: #{tax}"
  end
end



if input.include? packets_of_headache_pills
  tax = price * 0.1
  price += tax
  total_tax += tax 
  total_price = price

  if input.include? "imported"
    imported = true
    tax = price * 0.05
    price += tax
    total_tax += tax 
    total_price = price
    puts "#{quantity} imported music CD: #{price}"
    puts "Sales Tax: #{tax}"
  else
    puts "#{quantity} music CD: #{price}"
    puts "Sales Tax: #{tax}"
  end
end

if input.include? packets_of_headache_pills
  tax = price * 0.1
  price += tax
  total_tax += tax 
  total_price = price

  if input.include? "imported"
    imported = true
    tax = price * 0.05
    price += tax
    total_tax += tax 
    total_price = price
    puts "#{quantity} imported bottle of perfume: #{price}"
    puts "Sales Tax: #{tax}"
  else
    puts "#{quantity} bottle of perfume : #{price}"
    puts "Sales Tax: #{tax}"
  end
end
