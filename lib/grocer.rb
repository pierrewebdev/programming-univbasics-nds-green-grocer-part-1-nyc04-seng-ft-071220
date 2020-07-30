require "pry"
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  # Consult README for inputs and outputs
  item = collection.find{|grocery_item|grocery_item[:item] == name}
  item
end

#helper method to help me with #consolidated_cart
def cart-counter-helper(grocery_item,customer_cart)
  count = 1 # count to return at the end, it is assumed that there is already one of this item 
  
  if customer_cart.include?(grocery_item)
    count += 1
  else
    count
  end
  
end
  
def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  consolidated_cart = [] #here I will store my data and account for duplicates
  
  cart.each do |grocery_item|
    count = cart-counter-helper(grocery_item,cart)
    consolidated_cart << {
      :item => grocery_item[:item],
      :price => grocery_item[:price],
      :clearance => grocery_item[:clearance],
      :count => count
    }
  end

end

binding.pry




  