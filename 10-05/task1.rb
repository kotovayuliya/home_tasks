# Create a file with numbers from another two files. The numbers in new file must be in two columns (each column has width 30 symbols), numbers align right and have separate sign "|"

require 'csv'

str =""
arr1 = []
arr2 = []

File.open("int_nums1.txt").each do |line|
  arr1 << line.chomp
end

File.open("int_nums2.txt").each do |line|
  arr2 << line.chomp
end

arr1.each_index do |index1|
  arr2.each_index { |index2|
    if index1 == index2
      str << "|#{arr1[index1].rjust(30)}|#{arr2[index2].rjust(30)}|\n"
    end
  }
end

nums_rjust = File.open("nums_comm.txt", "w+")
nums_rjust.write str
nums_rjust.close
