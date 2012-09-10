# Create a hash
track = {:name => "Electic Worm", 
 :artist => "Beastie Boys",
 :track_number => 6
}

# Notice the variables are not typed
# :name is a symbol - constants that are guaranteed to be unique

#access hash
track[:artist]

#check class
track[:artist].class

#change track number
track[:track_number] += 1

#create a method
def show_track(track)
  puts "Track #{track[:artist]} - #{track[:name]}"
end

#call method
show_track(track)


#create an array
playlist = []

#add our track
playlist << track

#let's add a couple more
playlist << {:name => 'Hurricane', :artist => 'Bob Dylan' }
playlist << {:name => 'Sabotage',  :artist => "Beastie Boys"}
playlist << {:name => 'Home', :artist => 'Edward Sharpe' }
playlist << {:name => 'Right Here, Right Now', :artist => 'Fatboy Slim'}

#check the content of playlist
puts playlist

#first track in playlist - you do not need parenthesis around parameters
show_track playlist[0]

#list all of the names of the songs in our playlist
playlist.collect {|t| t[:name]}

#all of the beastie boy songs
playlist.select {|t| t[:artist] == "Beastie Boys"}


#Methods on array - http://www.ruby-doc.org/core-1.9.3/Array.html

