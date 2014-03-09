# Responds to initial update check request
def respond (*params)
	params[:customer_id]

	clear_alert(current_time + '1 minute')

	last_date =        last_date_of(params[:customer_id])
	latest_version =   latest_version()
	latest_url =	   latest_url()
	time_of_next_update = time_of_next_update()

	set_alert(time_of_next_update + '1 minute')

	hash_array = { last_date: last_date, latest_version: latest_version, latest_url: latest_url }

	print JSON.generate(hash_array)
end


def latest_version
	# performs check for latest version of scrobbeler file
	# may be stored in text file, database, or a call to the file stored in a specific folder, such as "/latest/scrobbler.rb" -v
	3.5
end

def latest_url
	# returns the server url path to the update patch file
	"http://pos.swipely.com/latest/scrobbler.#{self.latest_version}.zip"
end

def time_of_next_update
	# 5 minutes from now
	Time.now + 60*5
end
