require 'csv'

CSV.open("phones.csv", "w") do |row|
  row <<  ["Name", "Year", "Phone number"]
  row <<  ["Petrov", "2004", "4444444"]
  row <<  ["Ivanov", "2001", "2222222"]
  row <<  ["Kotova", "2006", "5555555"]
  row <<  ["Protsenko", "2010", "3333333"]
end

phone_owners_info = CSV.read("phones.csv", headers: true)

print "Enter your surname: "
surname = gets.chomp
phone_owners_info.each do |elem|
  if elem["Name"] == surname
    puts elem["Phone number"]
  end
end

print "Enter year: "
user_year = gets.chomp
phone_counter = phone_owners_info.count do |elem|
  elem["Year"] >= user_year
end

puts phone_counter
