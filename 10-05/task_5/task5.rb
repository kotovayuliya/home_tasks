text_buffer = ""

strings_counter = File.readlines("statistic.txt").count
puts "Number of lines: #{strings_counter}"

File.open("statistic.txt").each do |line|
  text_buffer << line
end

all_elements_counter = text_buffer.length
puts "Number of symbols: #{all_elements_counter}"

symbols_without_spaces = text_buffer.gsub(/\s|\t|\n|\r/, '').length
spaces_counter = all_elements_counter - symbols_without_spaces
percentage = (spaces_counter.to_f / all_elements_counter.to_f) * 100
puts "Space percentage: #{percentage}"
