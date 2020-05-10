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
  cart.each do |item|
    if result.include? (item[:item])
      item[:price] += item[:price]
      item[:count] += 1
    else        
      result.push(item)
      item[:count] = 1
    end
  end
  result
end


  