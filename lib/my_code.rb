def map (array)
  i = 0 
  return_array = []
  
  while i < array.length do
    return_array << (yield (array[i]))
    i += 1 
  end
  
  return_array
end


def reduce (array, start=nil)
  if start
    total = start
    i = 0
  else
    total = array [0]
    i = 1
  end
  
  while i < array.length 
    total = (yield(total, array[i]))
    i += 1 
  end
  
  total
end