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


def reduce(source_array, starting_point)
   i = 0
   if starting_point
     start = starting_point
   else
     start = 0
   end
   while i < source_array.length
     start = yield(start, source_array[i])
     i += 1
   end
   return start
 end
