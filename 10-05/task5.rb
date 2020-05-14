# Count the lines number, symbols number and space percentage

str = ""

file = File.open("statistic.txt")
line_counter = file.readlines.count
puts "Number of lines: #{line_counter}"

File.open("statistic.txt").each do |line|
  str << line
end

chars = str.length
puts "Number of symbols: #{chars}"

chars_space_off = str.gsub(/\s|\t|\n|\r/, '').length
spaces_counter = chars - chars_space_off
percent = (spaces_counter.to_f / chars.to_f) * 100
puts "Space percentage: #{percent}"
