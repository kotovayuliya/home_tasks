text_lines = File.readlines('statistic.txt')
puts "Number of lines: #{text_lines.size}"

text_buffer = text_lines.join

all_elements_counter = text_buffer.length
puts "Number of symbols: #{all_elements_counter}"

# symbols_without_spaces = text_buffer.gsub(/\s|\t|\n|\r/, '').length
spaces_counter = text_buffer.scan(/\s|\t|\n|\r/).count
percentage = (spaces_counter.to_f / all_elements_counter.to_f) * 100
puts "Space percentage: #{percentage}"
