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
  counter = 0 
  while counter < cart.length do
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], result)
    if new_cart_item
    counter += 1
  end
  result
end


  