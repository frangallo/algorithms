def fib(num, cache={})
  if cache[num]
    return cache[num]
  elsif num == 0
    return 0
  elsif num == 1
    return 1
  else
    value = fib(num-1, cache) + fib(num-2, cache)
    cache[num] = value
    return value
  end
end


# function isPalindrome(string){
#   var start = 0;
#   var end = string.length;
#
#   while (start <= end){
#     if (string[start] === string[end]){
#       start++;
#       end--;
#     } else {
#       return false
#     }
#   }
#   return true;
# }

def valid_ip?(string)
  nums = string.split(".")
  nums.all?{|el| el.to_i.between?(0,255)}
end
