def sort_array_asc(int_arr)
  int_arr.sort
end

def sort_array_desc(int_arr)
  int_arr.sort {|x,y| y <=> x}
end

def sort_array_char_count(int_arr)
  int_arr.sort {|x,y| x.length <=> y.length}
end

def swap_elements(int_arr)
  int_arr[1],int_arr[2] = int_arr[2],int_arr[1]
  # referencing the order of the elements with an index from the array and then changing their order
  int_arr
end

def reverse_array(int_arr)
  int_arr.reverse
end

def kesha_maker (str_arr)
  str_arr.map do |str|
    str[2] = "$"
    #accessing the elements of a string through an index and changing them
    str
    # the string is returned into the modified array
  end
end

def find_a(str_arr)
  str_arr.select {|str| str[0] == "a"}
  # select all strings that have an "a" at index 0
end

def sum_array(int_arr)
  sum = 0
  int_arr.map {|int| sum += int}
  # use a variable outside the enumerable to add all the elements to one by one.
  sum
end

def add_s(str_arr)
  str_arr_prural = []
  # skip the element "feet" with reject and chain .each to add an s to every other element
  str_arr.reject{|str| str == "feet"}.each do|str| 
  str_arr_prural << "#{str}s"
  end
  str_arr_prural.insert(1, "feet")
  # put "feet" back inside the array that should be returned at the end of the method
  str_arr_prural
end
