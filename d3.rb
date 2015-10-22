Array.prototype.myMap = function (callback) {
  results = []
  this.forEach(function(el){
    results.push(callback(el))
  });
  return results
};

SELECT
  employees.*
FROM
  employees e
JOIN
  department d ON e.deptid = d.id
WHERE
d.name= ?


SELECT
  COUNT(*)
FROM
  USERS
WHERE
  last_login BETWEEN start AND end

User.where(last_login: (start..end)).count


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
