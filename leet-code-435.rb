


# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
  result = []
  nums.each { |num| result << num}
  nums.each { |num| result << num}
  result
end

# more simepler

# def get_concatenation(nums)
#   nums.concat(nums)
# end

nums = [1,3,2,1]

puts get_concatenation(nums)
