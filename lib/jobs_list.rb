class JobsList

	def self.sequence(jobs={})
		parent_jobs = jobs.values
		grouped_jobs = jobs.group_by{|k, v| v}

		grouped_jobs.map do |k,v|
			[k] + v.keys
		end.flatten
	end
end 