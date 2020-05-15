print "Enter the first file name: "
input_file_name = gets.strip

if input_file_name == ""
  input_file_name = "f.txt"
end

text_buffer = ""
File.open(input_file_name).each do |line|
  text_buffer += line.gsub(/^$\n/, "")
end

print "Enter the second file name: "
output_file_name2 = gets.strip

if output_file_name2 == ""
  output_file_name2 = "g.txt"
end

output_file = File.open(output_file_name2,"w")
output_file.write text_buffer
output_file.close

print "Enter the limit number: "
limit_num = gets.to_i

text_buffer = ""
File.open(output_file_name2).each do |line|
  if line.size <= limit_num
    text_buffer += "#{line.chop.ljust(limit_num)}\n"
  elsif line.size > limit_num
    line_new = line[0...limit_num] + "\n"
    # This is an alternative implementation of this task.
    # You can make a line break to not cut the lines.
      # line_new = line.chars.each_slice(limit_num).map{ |el| el.join}.join("\r")
    text_buffer += line_new
  end
end

limit_lines_file = File.open(output_file_name2,"w")
limit_lines_file.write text_buffer
limit_lines_file.close

