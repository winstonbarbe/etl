def transform(old_data)
  # Your job is to complete this method!
  # new_array = []
  # old_data[1].each do |letter|
  #   new_array << [letter.downcase, 1]
  # end
  # old_data[2].each do |letter|
  #   new_array << [letter.downcase, 2]
  # end
  # old_data[3].each do |letter|
  #   new_array << [letter.downcase, 3]
  # end
  # old_data[4].each do |letter|
  #   new_array << [letter.downcase, 4]
  # end
  # old_data[5].each do |letter|
  #   new_array << [letter.downcase, 5]
  # end
  # old_data[8].each do |letter|
  #   new_array << [letter.downcase, 8]
  # end
  # old_data[10].each do |letter|
  #   new_array << [letter.downcase, 10]
  # end
  # new_data = {}
  # sorted_array = new_array.sort_by { |array| array[0] }
  # sorted_array.each do |array|
  #   new_data[array[0]] = array[1]
  # end
  # new_data
  new_data_array = []
  old_data.each do |key, value|
    value.each do |letter|
      new_data_array << [letter.downcase, key]
    end
  end
  new_data = {}
  new_data_array_sorted = new_data_array.sort_by { |array| array[0] }
  new_data_array_sorted.each do |array|
    new_data[array[0]] = array[1]
  end
  new_data
end

# old_data = {
#   1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
#   2 => ["D", "G"],
#   3 => ["B", "C", "M", "P"],
#   4 => ["F", "H", "V", "W", "Y"],
#   5 => ["K"],
#   8 => ["J", "X"],
#   10 => ["Q", "Z"]
# }
# transform(old_data)

# puts
# puts

# old_data = {
#   1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
#   2 => ["D", "G"],
#   3 => ["B", "C", "M", "P"]
# }
# transform(old_data)
# puts
# puts

# old_data = {
#   1 => ["A"],
# }
# transform(old_data)
# puts
# puts

# old_data = {
#   1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
# }
# transform(old_data)