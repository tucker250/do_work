def version
	self.current_version
end

def scrobble (last_scrobble_date)
	# last_scrobble_date is returned by the server in the initial netrequest
	# communicate with POS

	# query POS for every name on transactions between last_scrobble_date and now

	# move query results in array

	# move array into Net.new
end