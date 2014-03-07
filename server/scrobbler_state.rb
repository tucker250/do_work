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