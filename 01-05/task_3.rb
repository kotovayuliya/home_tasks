arr1 = []

File.open("nums1.txt").each do |line|
  arr1 = line.split
end

arr2 = []

File.open("nums2.txt").each do |line2|
  arr2 = line2.split
end

arr_first = File.open("nums-first.txt", "w+")
arr_first.write (arr1 - arr2).join(", ")
arr_first.close
