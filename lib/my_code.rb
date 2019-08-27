# Your Code Here
def map(given_array)
new = []
i = 0
while i < given_array.length
  new << yield(given_array[i])
  i += 1
end
return new
end


def reduce(source_array, starting_point = 0)
  start = starting_point
   i = 0
  if start == 0
    while i < source_array.length
      start = yield(source_array, start)
      i += 1
    end
  end
  return start
end
