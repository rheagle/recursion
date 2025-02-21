def fibs(n)
  array = [0, 1]

  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 1
  
  while array.length < n
    next_value = array[-1] + array[-2]
    array << next_value
  end
  
  array
end

#print fibs(8)

def fibs_rec(n)
  puts 'This was printed recursively'

  return [] if n ==0
  return [0] if n == 1
  return [0, 1] if n == 2

  array = fibs_rec(n - 1)
  array << array[-1] + array[-2]
end

print fibs_rec(8)