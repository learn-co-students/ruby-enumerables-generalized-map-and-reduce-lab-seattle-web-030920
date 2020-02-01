# Your Code Here
def map(source, start = 0)
  result = []
  i = start
  while i < source.length 
    result.push(yield(source[i]))
    i += 1
  end
  return result
end

def reduce(source, start = nil)
  if start
    result = start
    i = 0
  else
    result = source[0]
    i = 1
  end
  while i < source.length
    result = yield(result, source[i])
    i +=1
  end
  return result
end