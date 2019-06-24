def consolidate_cart(cart)
  items = {}
    cart.each_with_index do |key, value|
    key.each do |food, item|
      if items[food]
        items[food][:count] += 1
      else
        items[food] = item
        items[food][:count] = 1
      end
    end
  end
  items
end

# def apply_coupons(cart, coupons)
#   # code here
#   cart_stuff = cart
#   coupons.each do |coupon|
#   items = coupon[:item]
#   if cart_stuff.keys.include?(items)
#     count = cart_stuff[items][:count]
#   if cart_stuff >= coupon[:num]
#         food = {"#{items} W/COUPON" => {price: coupon[:cost], clearance: cart_stuff[item][:clearance], count: cart_stuff/coupon[:num]}}
#         cart_stuff[items][:count] %= coupon[:num]
#         cart_stuff = cart_stuff.merge(food)
#       end 
#   end
# end
# return cart_stuff
# end

def apply_clearance(cart)
  # code here
   cart.each do |item, value|
    if value[:clearance]
      discount = value[:price] * 0.8
      value[:price] = discount.round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # code here
end
