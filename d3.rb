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
    start.upto(str.length) do |end|
      substrings[str[start..end]] = true unless substrings[str[start..end]]
    end
  end
  substrings.keys
end

[1,2,3,-2,4,-5]

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
