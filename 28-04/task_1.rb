require 'pry'


print "Enter the file name (f.txt): "
file_name = gets.strip

str = ""

File.open(file_name).each do |line|

  str += line.gsub(/^$\n/, "")

end

print "Enter the file name (g.txt): "
file_name2 = gets.strip

empty_str_off = File.open(file_name2,"w")
empty_str_off.write str
empty_str_off.close

print "Enter the limit number: "
limit_num = gets.to_i

str2 = ""

File.open(file_name2).each do |line|
    if line.size <= limit_num
    str2 += "#{line.chop.ljust(limit_num)}\n"
    elsif line.size > limit_num
      # binding.pry
      line_new = line[0...limit_num] + "\n"
      # line_new = line.chars.each_slice(limit_num).map{ |el| el.join}.join("\r")
      str2 += line_new
    end
end

limit_lines = File.open(file_name2,"w")
limit_lines.write str2
limit_lines.close

