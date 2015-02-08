# Start with a method that accepts a single string argument and returns a string (or a collection) which represents the ordered
# sequence of jobs (since each job is a single character).
#jobs are single character objects
#each job in the list is represented by a character. Each character then should ahave an index value.


require 'jobs_list'

describe JobsList do

	it "should return an empty sequence of jobs if a blank hash was supplied" do 
		expect(JobsList.sequence({})).to eq []		
	end

	it "should return an single job character if a single jobs was supplied" do 
		expect(JobsList.sequence({'a' => nil})).to eq ['a']		
	end

	it "should return multiple jobs characters if a multiple jobs were supplied" do 
		expect(JobsList.sequence({'a' => nil, 'b' => nil, 'c' => nil})).to eq ['a', 'b', 'c']		
	end
end
