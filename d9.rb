def files_list(hash)
  files = []

  hash.each do |item, nested_item|
    if nested_item.is_a?(Hash)
      folder = item
      nested_files = files_list(nested_item)
      nested_files.each {|file| files << "#{folder}/#{file}"}
    else
      files << item
    end
  end
  files
end


def find_missing_number(array1, array2)
  num = array1.inject(:+) - array2.inject(:+)
end

def is_shuffle?(array1,array2,array3)
  length = array3.length
  arr1_length = 0
  arr2_length = 0
  0.upto(length-1) do |el|
    if el == array1[arr1_length]
      arr1_length +=1
    elsif
      el == array2[arr2_length]
      arr2_length +=1
    else
      return false
    end
  end
  true
end
