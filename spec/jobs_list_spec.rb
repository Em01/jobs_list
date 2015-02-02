# Start with a method that accepts a single string argument and returns a string (or a collection) which represents the ordered
# sequence of jobs (since each job is a single character).
#jobs are single character objects
#each job in the list is represented by a character. Each character then should ahave an index value.


require 'jobs_list'

describe JobsList do
	context "given an empty list of jobs" do 
		it "should return an empty sequence of jobs" do 
		expect(JobsList.empty_sequence('')).to eq ''		
		end
	end

	context "given a jobs list with one object" do 
		it "should return a sequence of jobs containing one object" do 
			expect(JobsList.new.list).to eq 'a'
		end
	end
end
