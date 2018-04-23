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
  cart.each do |item_name, item_stats|
    coupons.each do |coupon|
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
