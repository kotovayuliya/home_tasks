parag_counter = 0

lines_with_break_symb = File.readlines("parag1.txt")
text = lines_with_break_symb.join
lines_without_break_symb = text.split(/\n/)

lines_without_break_symb.each do |string|
  if /.+/.match(string)
    parag_counter += 1
  end
end

puts parag_counter
