# Create a file with only punctuation marks from first file

str = ""

File.open("symbols.txt").each do |line|
  text = line.scan(/\w+\s*/).join
  str << line.delete(text)
end

symb = File.open("symbols-1.txt", "w+")
symb.write str
symb.close
