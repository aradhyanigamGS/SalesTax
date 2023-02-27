class Input
  
  def input

    # puts "Taking input"
    
    @input = []

    loop do 
      # puts "sdf"
      @product = gets.chomp
      if @product.nil? || @product.empty?
        break
      end
      @input.push(@product)
    end
    # puts "#{@input}"
    @input
  end
end
