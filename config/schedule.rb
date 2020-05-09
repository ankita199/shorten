set :output, 'log/whenever.log'

#every 1.minute do
every 1.mmonth do
	runner 'CleanUrlJob.perform_now'
end
