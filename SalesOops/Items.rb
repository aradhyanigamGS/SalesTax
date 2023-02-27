class Items
  def initialize()
    @item = {"book" => "book",
      "chocolate_bar" => "chocolate bar",
      "box_of_chocolates" => "box of chocolates",
      "box_of_imported_chocolates" => "box of imported chocolates",
      
      "packet_of_headache_pills" => "packet of headache pills",
      
      "musicCD"  => "music CD",
      "bottle_of_perfume" => "bottle of perfume"
    }

  end
  # "imported_box_of_chocolates" => "imported box of chocolates",
  
  def item
    @item
  end
  
  # product = "chocolate_bar"
  # puts @item[product]

end