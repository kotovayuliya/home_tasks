punct_marks = ""

File.open("symbols.txt").each do |line|
  text_and_spaces = line.scan(/\w+\s*/).join
  punct_marks << line.delete(text_and_spaces)
end

punct_marks_file = File.open("symbols-1.txt", "w+")
punct_marks_file.write punct_marks
punct_marks_file.close
