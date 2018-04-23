def consolidate_cart(cart)
  result = {}

  cart.each do |item|
    item.each do |item_name, item_stats|
      if result.has_key?(item_name)
        result[item_name][:count] += 1
      else
        result[item_name] = item_stats
        result[item_name][:count] = 1
      end
    end
  end
  result
end

def apply_coupons(cart, coupons)
  result = cart

  return cart if coupons.length == 0

  coupons.each do |coupon|
    coupon_name = coupon[:item]
    if result.has_key?(coupon_name)
      result[coupon_name][:count] -= coupon[:num]
      coupon_key = "#{coupon_name} W/COUPON"
      if result.has_key?(coupon_key)
        result[coupon_key][:count] += 1
      else
        result[coupon_key] = {:price => coupon[:cost], :clearance => result[coupon_name][:clearance], :count => 1}




=begin
  cart.each do |item_name, item_stats|
    coupons.each do |coupon|
      if item_name == coupon[:item]
        if result.has_key?(item_name)


        item_stats[:count] = item_stats[:count] - coupon[:num]
        result["#{item_name} W/COUPON"] = {:price => coupon[:cost], :clearance => item_stats[:clearance], :count => discount_count}
        result[item_name] = item_stats



      else
        result[item_name] = item_stats
      end
    end
  end
=end
  result
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
