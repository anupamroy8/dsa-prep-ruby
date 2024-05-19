# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
  result = []
  nums.each { |num| result << num}
  nums.each { |num| result << num}
  result
end


def get_concatenation(nums)
  nums.concat nums
end

nums = [1,2,3]

print get_concatenation(nums)