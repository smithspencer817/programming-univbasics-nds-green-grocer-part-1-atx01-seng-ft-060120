require "pry"

def find_item_by_name_in_collection(name, collection)
  
  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  nil
end

def consolidate_cart(cart)
  result = []
  binding.pry
  cart.each do |item|
    if result.include? (item[:item])
      item[:price] += item[:price]
    else        
      result.push(item)
    end
  end
  result
end


  