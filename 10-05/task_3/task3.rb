print "Enter the paragraph number: "
parag_num = gets.to_i

parag_counter = 0

text_buffer = File.readlines("parag2.txt").join.split(/\n/)

lines_without_k_parag = text_buffer.each do |string|
  if /.+/.match(string)
    parag_counter += 1
    if parag_counter == parag_num
      text_buffer.delete(string)
    end
  end
end

file_without_k_parag = File.open("parag2.txt", "w+")
file_without_k_parag.write lines_without_k_parag.join("\n")
file_without_k_parag.close
