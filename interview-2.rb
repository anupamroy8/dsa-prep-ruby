=begin
Previous Question
This is network status bar, which shows on & off timings of a network. The output should be on & off timings.

Input: [[5,"ON"], [7,"OFF"], [30,"ON"], [31, "OFF"], [36,"ON"]]

output: [[5,7],[30,31]]  

Next question on top of it.

Now, we have multiple devices with outputs
input: [
  [[5,7],[30,31]]..... //device1
  [[6,7],[9,12],[31,35]]..... //device1
  [[6,8],[10,14],[32,36]]..... //device1
]

output: [[5,8],[9,14],[30,36]]
=end


def network_status_bar(network_status)
  result = []
  start_time = nil

  all_timings = network_status.flatten(1)
  all_timings.sort_by!{|timing| timing[0]}
  
  result = result.push(all_timings[0])

  (1...all_timings.size).each do |i|
    if result[-1][1] >= all_timings[i][0] 
      result[-1][1] = [result[-1][1], all_timings[i][1]].max
      # result[-1][1] = all_timings[i][1]  #we can write because we know the next will always be greater.
    else
      result.push(all_timings[i])
    end
  end
  result
end


device1 = [[5, 7], [30, 31]]
device2 = [[6, 7], [9, 12], [31, 35]]
device3 = [[6, 8], [10, 14], [32, 36]]

input = [device1, device2, device3]

print network_status_bar(input)

