data_path = "task1_data.txt"

def get_digits(line)
  found_right = false
  found_left = false
  size = line.size
  i = 0
  result = 0
  while !found_left || !found_right
    char_left = line[i].to_i?
    char_right = line[size-i-1].to_i?
    if !found_left && !char_left.nil?
      result += char_left.to_i * 10
      found_left = true
    end
     if !found_right && !char_right.nil?
      result += char_right.to_i
      found_right = true
    end
    i+=1
  end
  result
  end


sum_all = 0
File.each_line(data_path) do |line|
  digit = get_digits(line)
  puts digit
  sum_all += digit
end

puts sum_all
