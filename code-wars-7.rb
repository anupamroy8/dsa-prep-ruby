def riders(stations)
  # Your code here
  current_distance = 0
  number_of_riders = 1
  
  stations.each do |distance|
    if current_distance + distance > 100
      number_of_riders += 1
      current_distance = distance
      puts "#{current_distance} iff #{distance}"
    else
      current_distance += distance
      puts "#{current_distance} elsee #{distance}"
    end
  end
  number_of_riders
end

riders([6, 24, 6, 8, 28, 8, 23, 47, 17, 29, 37, 18, 40, 49])

