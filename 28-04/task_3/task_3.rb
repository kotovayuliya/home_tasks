rjust_text_buffer = ""

File.open("f3.txt").each do |line|
  rjust_text_buffer += line.rjust(50)
end

rjust_strings_file = File.open("g3.txt","w+")
rjust_strings_file.write rjust_text_buffer
