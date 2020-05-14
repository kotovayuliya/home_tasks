# Count the paragraph number

i = 0

lines = File.readlines("parag1.txt")
text = lines.join
arr = text.split(/\n/)

arr.each do |el|
  if /.+/.match(el)
    i += 1
  end
end

puts i
