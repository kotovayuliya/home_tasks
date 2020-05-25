text_lines = File.readlines('statistic.txt')
puts "Number of lines: #{text_lines.size}"

text_buffer = text_lines.join

all_elements_counter = text_buffer.length
puts "Number of symbols: #{all_elements_counter}"

spaces_counter = text_buffer.scan(/\s|\t|\n|\r/).count
percentage = (spaces_counter.to_f / all_elements_counter.to_f) * 100
puts "Space percentage: #{percentage}"
