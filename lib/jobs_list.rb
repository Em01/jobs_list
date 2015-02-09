class JobsList

	def self.sequence(jobs={})
		jobs.each do |job, parent|
			if job == parent
				raise "Invalid. Self dependency"
			end
		end
		grouped_jobs = jobs.group_by{|key, value| value}
		grouped_jobs.map do |key,value|
			array = []
			if key 
				array = array + [key]
			end
			array = array + value.map{|a| a[0]}
		end.flatten.uniq.compact
	end
end
