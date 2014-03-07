# spawn new thread for scrobbler
begin 
	# poll for latest software versin
	uri = URI('http://pos.swipely.com/scrobbler_version')
	resp = Net::HTTP.get(uri)

	# get current_version
	current_version = scrobbler.current_version

	# compare to current software version
	

	# request UPDATE-PACKAGE

	# download / install UPDATE-PACKAGE




	# pull cardholder names

# catch 
rescue

end