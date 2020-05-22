require 'csv'

CSV.open("phones.csv", "w") do |row|
  row <<  ["Petrov", "2004", "4444444"]
  row <<  ["Ivanov", "2001", "2222222"]
  row <<  ["Kotova", "2006", "5555555"]
  row <<  ["Protsenko", "2010", "3333333"]
end

info_buffer = CSV.read("phones.csv")
phone_owners_info = {}

info_buffer.map do |column|
  surnames = [column[0]]
  year_and_number = [column[1..-1]]
  clients = surnames.join
  phone_owners_info[clients] = year_and_number.flatten
end

print "Enter your surname: "
surname = gets.chomp
phone_owners_info.each do |client, info|
  if client == surname
    puts info[1]
  end
end

print "Enter year: "
user_year = gets.chomp
phone_counter = 0
phone_owners_info.each_value do |phone_info|
  if phone_info[0] >= user_year
    phone_counter += 1
  end
end

puts phone_counter
