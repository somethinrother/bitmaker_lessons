### STRINGS

## .length

# .length is a method that provides the number of elements
# contained in the string or variable it's called on.
# It will return an integer.
"hello".length # equals to 5, since that's the number of letters.
ary = [1, 2, 3, 4, 5]
ary.length # this would be 5 as well, since there are 5 elements in the array

## .strip

# .strip is called on a string, and will take away any blank space at
# the start or end of the string. It returns a string normally, or
# nil if it didn't affect anything.
" hey bro ".strip # returns "hey bro"

## .split

# .split is a method that is called on a string, and returns an array.
# It will split apart your string based on the argument you provide.
"I like you".split # returns ["I", "like", "you"]
"hello".split(//) # returns ["h", "e", "l", "l", "o"]

## .start_with?

# .start_with? is called on a string and returns a boolean. You feed
# it a string or series of strings, and it will detect if the string
# you call it on starts with one of the arguments.
"Beekeeper".starts_with?("Beek") # returns true
"beekeeper".starts_with?("flop") # returns false

### ARRAYS
## .first

# .first is called on an array, and returns a string or array.
# By default, it will return the first item in the array as the same
# data type it was originally. If you give an integer argument,
# it will give you an array of the first n array items, where n is
# the argument
ary = [1, 2, 3, 4, 5]
ary.first # returns 1
ary.first(3) # returns [1, 2, 3]

## .delete_at

# .delete_at is a method that is called on an array in order to delete
# the item at the index specified in the argument. It needs an argument
# in order to properly function. If the index is valid, it returns the
# item of the specified index. If it's argument is for an index that
# is not present in the array (too high), it returns nil.
ary = [1, 2, 3, 4, 5]
ary.delete_at(2) # deletes and returns 3
ary.delete_at(15) # returns nil

## .delete

# .delete is a method that can be called on an array in order to
# delete a specific entry in the array, specified in the argument.
# Whereas delete_at locates and deletes by index, .delete deletes
# by specific content. It returns the item deleted, or nil if it's
# not present. If there are curly brackets after the argument, and
# the item isn't present in the array, it returns the contents of the
# curly brackets rather than nil.
ary = [1, 2, 3, 4, 5]
ary.delete(5) # deletes and returns 5
ary.delete(6) # returns nil
ary.delete(6) { "hello" } # returns "hello"

## .pop

# .pop removes the highest index item in the array and returns it
# as well.
ary = [1, 2, 3, 4, 5]
ary.pop # deletes and returns 5

### HASHES
## .to_a

# .to_a is a method that is called on an enumerable, and returns an array.
# if the item is a range, it returns an array with each number in
# the range as an item. If it's called in on a hash, each key
# value pair will be two items in an array, with each of those
# arrays in a larger array.
(1..3).to_a # returns [1, 2, 3]
{ "q" => 2, "s" => 4 }.to_a # returns [ ["q", 2], ["s", 4] ]

## .has_key?

# .has_key? is a method that is called on a hash, requires an argument,
# and returns a boolean. If the argument specified is a key present
# in the hash, it returns true. Otherwise, it returns false.
h = { "q" => 2, "s" => 4 }
h.has_key?("q") # returns true
h.has_key?(3) # returns false

## .has_value?

# .has_value? is essentially the same as .has_key?. It is called
# on a hash, requires an argument, and returns a boolean. The only
# difference is that it looks for the argument in the values,
# rather than the keys.
h = { "q" => 2, "s" => 4 }
h.has_value?(2) # returns true
h.has_value?("s") # returns false

### TIME
## .now

# When .now is called on Time, it returns an object of the current
# time.

Time.now # returns 2017-11-03 14:14:51 -0400

### FILES
## exist?

# exist? is a method that is called on File, accepts a filename
# as an argument, and returns a boolean. True if the file exists,
# false if not.

File.exist?("foo") # Returns false
File.exist?("/home/james/Desktop/bitmaker/projects/research_documentation/exercises.rb")
# returns true

## .extname

# This is a method that is is called on File, accepts a filename,
# as an argument, and returns just the extension as a string,
# based off of the . closest to the end of the filename.

File.extname("exercises.rb") # returns ".rb"
