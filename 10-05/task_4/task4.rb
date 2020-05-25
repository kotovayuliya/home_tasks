text_buffer = ""
lets_and_nums = []
alphabet = ("a".."z").to_a

File.open("small_let.txt").each do |line|
  text_buffer << line
end

alphabet.each do |letter|
  letter_counter = text_buffer.scan(letter).size
  if letter_counter > 0
    lets_and_nums << [letter, letter_counter]
  end
end

sorted_lets_and_nums = []
lets_and_nums.sort{|a,b| a[1]<=>b[1]}.each{|sorted_elems| sorted_lets_and_nums << sorted_elems.join(" - ")}

lets_and_nums_file = File.open("small_let1.txt", "w+")
lets_and_nums_file.write sorted_lets_and_nums.join("\n")
lets_and_nums_file.close
