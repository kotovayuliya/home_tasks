require 'csv'

CSV.open("phones.csv", "w") do |wr|
  wr <<  ["Petrov", "2004", "4444444"]
  wr <<  ["Ivanov", "2001", "2222222"]
  wr <<  ["Kotova", "2006", "5555555"]
  wr <<  ["Protsenko", "2010", "3333333"]
end

array = CSV.read("phones.csv")

hash = {}

array.map do |arr_elem|
  k = [arr_elem[0]]
  values = [arr_elem[1..-1]]
  keys = k.join
  hash[keys] = values.flatten
end

print "Enter your surname: "
surname = gets.chomp
hash.each do |key, value|
  if key == surname
    puts value[1]
  end
end

print "Enter year: "
year = gets.chomp
i = 0
hash.each_value do |value|
  arr_count = value
  if arr_count[0] >= year
    i += 1
  end
end

puts i
