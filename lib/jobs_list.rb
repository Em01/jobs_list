class JobsList

	def self.sequence(jobs={})
		grouped_jobs = jobs.group_by{|k, v| v}

		grouped_jobs.map do |k,v|
			[k] + v[1]
		end.flatten
	end
end 