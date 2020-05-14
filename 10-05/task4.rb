# Count small letters in first file and create second file with each of these letters and number of their appearances (a - 25), sort them by increase

str = ""
str2 = ""
alphabet = ("a".."z").to_a

File.open("small_let.txt").each do |line|
  str << line
end

alphabet.each do |el|
  count_let = str.scan(el).size
    if count_let > 0
      str2 << "#{el} - #{count_let},"
    end
end

arr_of_arr = []
str2.split(",").each do |elem|
  arr_of_arr << elem.split(" - ")
end

int_arr = arr_of_arr.each do |el|
  el[1] = el[1].to_i
end

sorted_num = int_arr.sort{|a,b| b[1]<=>a[1]}

joined_arr = []
sorted_num.each do |el|
  joined_arr << el.join(" - ")
end

let_and_num = File.open("small_let1.txt", "w+")
let_and_num.write joined_arr.join("\n")
let_and_num.close
