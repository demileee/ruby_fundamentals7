###### exercise 1 ######

numnum = [1, 2, 3, 4, 5, 6]

def sum(array)
  odd = []
  array.each do |num|
    odd << num if num%2 ==1
  end
  return odd.inject(0) {|sum, num| sum + num}
end

puts sum(numnum)

###### exercise 2 ######

names = ["bob", "stacy", "veronica"]

def name(array)
  puts "Please enter your name:"
  input = gets.chomp
  counter = 0

  array.each do |name|
    if input == name
      puts "Welcome, #{name}!"
    else
      counter += 1
    end
  end
  puts "Who goes there?" if counter == array.length
end

name(names)
