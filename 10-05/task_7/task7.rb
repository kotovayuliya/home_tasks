require 'csv'


CSV.open("visit_stat.csv", "w") do |wr|
  wr <<  ["IP", "Day", "Time"]
  wr <<  ["139.18.150.126", "Friday", "23:12:44"]
  wr <<  ["139.18.150.126", "Monday", "21:10:30"]
  wr <<  ["165.11.365.112", "Friday", "21:15:35"]
  wr <<  ["139.18.150.126", "Wednesday", "12:12:10"]
  wr <<  ["197.33.150.432", "Friday", "10:50:44"]
  wr <<  ["167.54.188.114", "Tuesday", "21:47:40"]
  wr <<  ["162.57.188.115", "Tuesday", "09:50:40"]
end

sorted_ip = ""

visit_list = CSV.read("visit_stat.csv", headers: true)


ip_hash_counter = visit_list["IP"].each_with_object(Hash.new(0)) { |ip, hash| hash[ip] += 1 }

ip_hash_counter.each do |ip, number|
  sorted_ip << "#{ip} - #{number} \n"
end

day_hash_counter = visit_list["Day"].each_with_object(Hash.new(0)) { |day, hash| hash[day] += 1 }
day_counter = day_hash_counter.max_by{|(day, count)| count }
popular_day = "The most popular day of the week is #{day_counter[0]}\n"

time_hash_counter = visit_list["Time"].each_with_object(Hash.new(0)) { |time, hash| hash[time[0..1]] += 1 }
time_counter = time_hash_counter.max_by{|(time, count)| count }
popular_time = "The most popular time is #{time_counter[0]}-#{time_counter[0].to_i + 1}\n"

visit_statistic_file = File.open("visit_stat2.txt", "w+")
visit_statistic_file.write sorted_ip
visit_statistic_file.write popular_day
visit_statistic_file.write popular_time
visit_statistic_file.close
