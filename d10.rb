def binary(num)
  result  = []
  until num == 0
    result.unshift(num % 2)
    num /= 2
  end
  result.empty? ? "0" : result.join
end


def factorial_it(num)
  result = 1
  until num == 1
    result *= num
    num -=1
  end
  result
end

def factorial_rec(num, cache)
  if num == 0
    cache[num] = 1
  elsif num == 1
    cache[num] = 1
  else
    val = num * factorial_rec(num-1, cache)
    cache[num] = val
  end
end

def max_unique_psub(str)
  psub = str[str.length - 1]

  (str.length - 2).downto(0) do |i|
    next if str[i] < psub[0]
    psub = str[i] + psub
  end

  psub
end
