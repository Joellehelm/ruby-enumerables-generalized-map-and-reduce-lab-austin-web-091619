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
     store = source_array[0]
     i = 1
   else
     store = starting_point
   end
   while i < source_array.length
     store = yield(store, source_array[i])
     i += 1
   end
   return store
 end
