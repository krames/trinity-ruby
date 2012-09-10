# Conditionals

is_this_thing_on = true

if is_this_thing_on
  puts "Yep! It's on!"
end

# the shorter version
puts "Yep! It's on!" if is_this_thing_on

#what about the opposite?
puts "turn it on" unless is_this_thing_on

#what else can we do?
if is_this_thing_on
  puts "It's on!"
else
  puts "Turn it on"
end

def grade_paper(grade)
  case grade
  when "A"
    puts 'Well done!'
  when "B"
    puts 'Try harder!'
  when "C"
  puts 'You need help!!!'
  else
    puts "You just making it up!"
  end
end

def grade_test(grade)
  case grade
  when "A", "B"
    puts 'You pretty smart!'
  when "C", "D"
    puts 'You pretty dumb!!'
  else
    puts "You can't even use a computer!"
  end
end

# What about loops?
i = 0
while i < 5 do
  puts i
  i += 1
end

for animal in ["dog", "cat", "rat", "bat"] do
  puts "I just saw a #{animal}"
end

# Blocks
(1..10).each {|i| puts i}

(1..10).each {|i| puts i if i % 2 == 1}

# each implemented in ruby?
def each(array, &block)
  for i in array do
    yield i      
  end
end

# use it to find the odd numbers
each([5,6,7,8]) {|num| puts num % 2 == 1 ? "odd" : "even"}

# use blocks for setup and cleanup
def read_line(file, &block)
  #implement
end


#show operators
def <<(track)
  
end

#show named parameters

# lets revisit the Playlist class so that it works with the following
# code


playlist.play({:artist => "Dylan", :rating => 3}) do |track|
  puts "I am playing #{track.name} by #{track.artist}"
end
