def streaming_sample(stream)
  sample = stream
  num_el = 1

  while true
    next_val = stream.next
    break if next_val.nil?

    keep_prop = 1/(num_el+1)
    sample = next_val if rand < keep_prop
    num_els +=1
  end
end


1
