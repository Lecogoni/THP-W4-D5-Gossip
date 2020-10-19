require 'pry'

hash1 = {"firstname" => "Mark", "lastname" => "Martin"}
hash2 = {"firstname" => "nico", "lastname" => "giraud"}
array2 = ["nico", "roger"]

array = []

array.push(hash1)
array << hash2
array << array2

binding.pry