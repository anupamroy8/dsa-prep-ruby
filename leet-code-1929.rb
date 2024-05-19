# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
  result = []
  nums.each { |num| result << num}
  nums.each { |num| result << num}
  result
end