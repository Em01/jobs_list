class JobsList

	def self.sequence(jobs)
		return [] if jobs.empty?
		[jobs.chars[0]]
	end
end 