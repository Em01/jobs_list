class JobsList

	def self.sequence(jobs={})
		grouped_jobs = jobs.group_by{|k, v| v}
		grouped_jobs.map do |k,v|
			array = []
			if k 
				array = array + [k]
			end
			array = array + v.map{|a| a[0]}
		end.flatten.uniq.compact
	end
end 