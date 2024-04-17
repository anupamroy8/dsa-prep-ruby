=begin
This is network status bar, which shows on & off timings of a network. The output should be on & off timings.

Input: [[5,"ON"], [7,"OFF"], [10,"ON"], [30, "OFF"], [36,"ON"]]

output: [[7,10],[30,36]]  
=end


# def network_status_bar(network_status)
#   result = []
#   off_timings_index = []
#   network_status.each_with_index do |state,index|
#     off_timings_index << index if state[1] == "OFF"
#   end

#   off_timings_index.each do |index|
#     result << [network_status[index-1][0], network_status[index][0]]
#   end
#   result
# end

def network_status_bar(network_status)
  result = []
  current_off_time = nil

  network_status.each do |status|
    time, state = status
    if state ==  "OFF"
      current_off_time = time
    elsif state == "ON" && current_off_time
      result << [current_off_time, time]
      current_off_time = nil
    end
  end
  result
end


input = [[5,"ON"], [7,"OFF"], [10,"ON"], [30, "OFF"], [36,"ON"]]

print network_status_bar(input)