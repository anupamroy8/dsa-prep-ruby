=begin
productFib(714) # should return (21, 34, true), 
# since F(8) = 21, F(9) = 34 and 714 = 21 * 34

productFib(800) # should return (34, 55, false), 
# since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55

productFib(714) # should return [21, 34, true], 
productFib(800) # should return [34, 55, false], 
=end

def productFib(prod)
  n, m = 0, 1
  while true
    product = n * m
    return [n, m, product == prod] if product >= prod
    n, m = m, n + m
  end
end

puts productFib(714).inspect

print productFib(800)
