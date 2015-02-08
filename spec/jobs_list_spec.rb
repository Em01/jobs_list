# Start with a method that accepts a single string argument and returns a string (or a collection) which represents the ordered
# sequence of jobs (since each job is a single character).
#jobs are single character objects
#each job in the list is represented by a character. Each character then should ahave an index value.


require 'jobs_list'

describe JobsList do

	it "should return an empty sequence of jobs if a blank hash was supplied" do 
		expect(JobsList.sequence({})).to eq []		
	end
end
