# Create a file with ip-list without repeating, with visit number per week, the most popular day of the week, the most popular time (hour)

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

hash = ""

array = CSV.read("visit_stat.csv", headers: true, converters: :numeric)
ip_counter = array["IP"].group_by{|i| i}.map{|k,v| [k, v.count]}.to_h

ip_counter.each do |key, value|
  hash << "#{key} - #{value} \n"
end

day_counter = array["Day"].group_by{|i| i}.map{|k,v| [k, v.count]}.sort{|a,b| b[1]<=>a[1]}

pop_day = "The most popular day of the week is #{day_counter[0][0]}\n"

time_counter = array["Time"].group_by{|i| i[0..1]}.map{|k,v| [k, v.count]}.sort{|a,b| b[1]<=>a[1]}

pop_time = "The most popular time is #{time_counter[0][0]}-#{time_counter[0][0].to_i + 1}\n"

visit_stat = File.open("visit_stat2.txt", "w+")
visit_stat.write hash
visit_stat.write pop_day
visit_stat.write pop_time
visit_stat.close
