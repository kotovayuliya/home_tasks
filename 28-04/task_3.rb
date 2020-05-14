str = ""

File.open("f3.txt").each do |line|
  str += line.rjust(50)
end

empty_str_off = File.open("g3.txt","w+")
empty_str_off.write str
