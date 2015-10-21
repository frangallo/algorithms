# Array.prototype.myMap = function (callback) {
#   results = []
#   this.forEach(function(el){
#     results.push(callback(el))
#   });
#   return results
# };
#
# SELECT
#   employees.*
# FROM
#   employees e
# JOIN
#   department d ON e.deptid = d.id
# WHERE
# d.name= ?
#
#
# SELECT
#   COUNT(*)
# FROM
#   USERS
# WHERE
#   last_login BETWEEN start AND end
#
# User.where(last_login: (start..end)).count


def folding_cipher(str)
  alphabet = {}
  alpha = ("a".."z").to_a
  start = 0
  end_el = 25
  result = ""

  while start < end_el
    alphabet[alpha[start]] = alpha[end_el]
    alphabet[alpha[end_el]] = alpha[start]
    start+=1
    end_el-=1
  end
p alphabet
  str.each_char do |el|

    result += alphabet[el]
  end

  result
end

def uniqe_subs(str)
  substrings = {}
  str.length.times do |start|
    start.upto(str.length) do |end_el|
      substrings[str[start..end_el]] = true unless substrings[str[start..end_el]]
    end
  end
  substrings.keys
end


def largest_cont_sum(array)
  sum = 0
  current = 0
  array.each do |el|
    current += el
    if current > sum
      sum = current
    elsif current < 0
      current = 0
    end
  end
  sum
end

def silly_years(num)
  result = []
  year = num
  while result.length < 10
    result << year if silly(year)
  end
  result
end

def silly(num)
  num_str = num.to_s
  return true if num_str[0..1].to_i + num_str[2..3].to_i == num_str[1..2].to_i
  false
end


def pair_sum(arr, k)
  seen = []
  pairs = []

  arr.each do |num|
    target = k - num

    if seen.include?(target)
      pairs.push(
        [[num, target].min, [num, target].max]
      )
    end
    seen.push(num)
  end
  p pairs
end
