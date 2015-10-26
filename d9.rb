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
