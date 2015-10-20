def digital_root(num)
  until num <= 10
    num = root(num)
  end
  num
end

def root(num)
  sum = 0
  while num > 0
    sum += (num % 10)
    num /= 10
  end
  sum
end
