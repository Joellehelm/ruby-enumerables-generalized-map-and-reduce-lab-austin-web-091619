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
   i = 0
   if starting_point == 0
     start = 0
     i += 1
   else
     start = starting_point
   end
   while i < source_array.length
     start = yield(start, source_array[i])
     i += 1
   end
   return start
end
