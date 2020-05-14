# User inputs the number of paragraph, delete this paragraph

print "Enter the paragraph number: "
par_num = gets.to_i

i = 0

lines = File.readlines("parag2.txt")
text = lines.join
arr = text.split(/\n/)

arr_new = arr.each do |el|
  if /.+/.match(el)
    i += 1
    if i == par_num
      arr.delete(el)
    end
  end
end

parag2 = File.open("parag2.txt", "w+")
parag2.write arr_new.join("\n")
parag2.close
