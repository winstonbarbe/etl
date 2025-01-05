def transform(old_data)
  # OLD CODE 
  
  # # new_data_array = []
  # # old_data.each do |key, value|
  # #   value.each do |letter|
  # #     new_data_array << [letter.downcase, key]
  # #   end
  # # end
  # # new_data = {}
  # # new_data_array_sorted = new_data_array.sort_by { |array| array[0] }
  # # new_data_array_sorted.each do |array|
  # #   new_data[array[0]] = array[1]
  # # end
  # # new_data
  
  # NEW CODE
  
  old_data.each_with_object({}) do |(key, letters), new_data|
    letters.each { |letter| new_data[letter.downcase] = key }
  end.sort.to_h
end
