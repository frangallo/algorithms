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

def caesar_chipher(string, shift)
  alphabet = ("a".."z").to_a
  result = ""

  string.each_char do |letter|
    idx = alphabet.index(letter) + shift
    idx %= 26
    result += alphabet[idx]
  end
  result
end
