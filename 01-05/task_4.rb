arr1 = []

File.open("nums1.txt").each do |line|
  arr1 = line.split
end

arr2 = []

File.open("nums2.txt").each do |line2|
  arr2 = line2.split
end

arr_glob = []
arr_glob << (arr1 - arr2).join(", ")
arr_glob << (arr2 - arr1).join(", ")

arr_unique = File.open("nums-unique.txt", "w+")
arr_unique.write arr_glob.join(", ")
arr_unique.close
