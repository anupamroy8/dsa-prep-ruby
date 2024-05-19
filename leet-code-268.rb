# 268. Missing Number
# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

def missing_number(nums)
  ans = 0

  nums.each { |num| ans ^= num }

  (1..(nums.size)).each { |num| ans ^= num }

  ans
end