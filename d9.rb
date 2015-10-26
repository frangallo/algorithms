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
