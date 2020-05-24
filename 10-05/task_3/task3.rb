print "Enter the paragraph number: "
parag_num = gets.to_i

parag_counter = 0

lines_with_break_symbol = File.readlines("parag2.txt")
text = lines_with_break_symbol.join
lines_without_break_symbol = text.split(/\n/)

lines_without_k_parag = lines_without_break_symbol.each do |string|
  if /.+/.match(string)
    parag_counter += 1
    if parag_counter == parag_num
      lines_without_break_symbol.delete(string)
    end
  end
end

file_without_k_parag = File.open("parag2.txt", "w+")
file_without_k_parag.write lines_without_k_parag.join("\n")
file_without_k_parag.close
