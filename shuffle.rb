def shuffle songs
	recurs_shuffle songs, []
end

def recurs_shuffle unsorted_tracks, shuffled

	alength = unsorted_tracks.length
	
	if alength <= 0
		return shuffled
	end
	
	random = rand(alength)
	track = unsorted_tracks[random]
	shuffled.push track
	unsorted_tracks.delete_at(random)
	
	recurs_shuffle unsorted_tracks, shuffled
	
end

tracks = ['Hotel California', 'Boys of Summer', 'Zephyr Song', 'Doesn\'t Remind Me', 'Cochise', 'Best of You', 'Rolling with the Punches', 'Supermassive Blackhole']
puts shuffle tracks