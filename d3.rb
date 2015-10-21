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
