def respond (*params)
	customer_id = params[:customer_id]
	names = params[:names]
	last_date = params[:last_date]

	last_payment_date = FirstData::last_payment_date(customer_id)


	# scrobble every name sent for customer_id
	names.each do |name|
		add_to_name_database(customer_id, name)
	end

	# update last date sent for customer_id
	update_last_date_for(customer_id, last_date)


	# compare last_date to last_payment_date
	# time_in_between
	# threshold = 48 hours 
	# if time_in_between > threshold
	# raise('POS might not be responding correctly')
	
end