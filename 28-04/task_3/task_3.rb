rjust_text_buffer = ""
print "Enter the number of spaces: "
spaces_num = gets.to_i

File.open("f3.txt").each do |line|
  rjust_text_buffer += line.rjust(spaces_num + line.size)
end

rjust_strings_file = File.open("g3.txt","w+")
rjust_strings_file.write rjust_text_buffer
rjust_strings_file.close
