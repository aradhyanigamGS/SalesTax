require_relative 'Items'

class Tax

  def initialize
    @tax = 0 
    @sales_tax = 0 
    @total_price = 0 
    items = Items.new()
    @item = items.item
    # puts "Item Hash created"
    @taxable = ["musicCD","bottle_of_perfume"] 
  end

  attr_accessor :taxable, :item , :sales_tax,:total_price
  
    
  
  def tax(input)
    
    input.each do |productInfo| 
      
      proInfoArr = productInfo.split(" ")
      

      @quantity = proInfoArr[0].to_i
    
      @price = proInfoArr[proInfoArr.length - 1].to_f

      taxation(productInfo,@sales_tax,@total_price)

    end
  end

  def taxation(productInfo,sales_tax,total_price)

    @sales_tax = sales_tax
    @total_price = total_price 

       
    cal(productInfo, @item ,@quantity, @price ,@sales_tax,@total_price)
  end

  def cal(productInfo, item ,quantity, price,sales_tax,total_price)

    @quantity = quantity
    @price = price
    @sales_tax = sales_tax
    @total_price = total_price
    # puts "inside cal method"

    item.each do |productKey , product| 

      # puts "#{product} inside item for loop" 
      if productInfo.include? item[productKey]
          
        
        if @taxable.include? productKey
          
          if productInfo.include? "imported" 
        
            @tax = @price * 0.05 + @price * 0.1
            @price += @tax 
            @sales_tax += @tax
            @total_price += @price
            
            # puts "sales1 : #{@sales_tax} , total = #{total_price}"
            puts  "#{@quantity} imported #{item[productKey]} : #{@quantity * @price.round(2)}"
          else
  
            @tax = @price * 0.1
            @price += @tax 
            @sales_tax += @tax
            @total_price += @price
            # puts "sales2 : #{@sales_tax} , total = #{total_price}"
            puts "#{@quantity} #{item[productKey]} : #{@quantity * @price.round(2)}"
          end
        else
          if productInfo.include? "imported" 
        
            @tax = @price * 0.05
            @price += @tax 
            @sales_tax += @tax
            @total_price += @price
            
            # puts "sales3 : #{@sales_tax} , total = #{@total_price}"
            puts  "#{@quantity} imported #{item[productKey]} : #{@quantity * @price.round(2)}"
          else
  
            @tax = 0
            @price += @tax 
            @sales_tax += @tax
            @total_price += @price

            # puts "sales4 : #{@sales_tax} , total = #{@total_price}"
            puts "#{@quantity} #{item[productKey]} :  #{@quantity * @price.round(2)}"
          end
        end
      end
    end
  end
end
