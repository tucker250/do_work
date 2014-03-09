begin 
	# poll for latest software version
	uri = URI('http://pos.swipely.com/scrobbler_version')
	resp = Net::HTTP.get(uri)

	current_version = scrobbler.version

	# compare to current software version
	if current_version < resp[:latest_version]
		file = Net::HTTP.get(resp[:latest_url])
		open(file) 	# may need to parse out filename from url
	end

	# spawn new thread for scrobbler client/scrobbler.rb

rescue
	# in case of failure, should probably default download an update
end