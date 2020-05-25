punct_marks = File.read("symbols.txt").gsub(/[\w\s]+/, '')

punct_marks_file = File.open("symbols-1.txt", "w+")
punct_marks_file.write punct_marks
punct_marks_file.close
