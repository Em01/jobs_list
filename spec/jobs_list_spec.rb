# Start with a method that accepts a single string argument and returns a string (or a collection) which represents the ordered
# sequence of jobs (since each job is a single character).
#jobs are single character objects
#each job in the list is represented by a character. Each character then should ahave an index value.


require 'jobs_list'
require './spec/matcher'

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

	it "should return ordered multiple jobs with the dependency if multiple jobs with single dependency were supplied" do 
		expect(JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => nil})).to eq ['a', 'c', 'b']		
	end

	it "should return all six jobs" do 
		puts JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => 'f', 'd' => 'a', 'e' => 'b', 'f' => nil})
		expect(JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => 'f', 'd' => 'a', 'e' => 'b', 'f' => nil})).to include(*['a', 'b', 'c', 'd', 'e', 'f'])
	end

	it "should return an ordered sequence of the six jobs" do 
		expect(JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => 'f', 'd' => 'a', 'e' => 'b', 'f' => nil})).to include(*['a', 'b', 'c', 'd', 'e', 'f'])
		expect(JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => 'f', 'd' => 'a', 'e' => 'b', 'f' => nil})).to have_order('f', 'c')
		expect(JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => 'f', 'd' => 'a', 'e' => 'b', 'f' => nil})).to have_order('c', 'b')
		expect(JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => 'f', 'd' => 'a', 'e' => 'b', 'f' => nil})).to have_order('b', 'e')
		expect(JobsList.sequence({'a' => nil, 'b' => 'c', 'c' => 'f', 'd' => 'a', 'e' => 'b', 'f' => nil})).to have_order('a', 'd')
    end

    it "should raise an error when self referencing dependency" do 
		expect{JobsList.sequence({'a' => nil, 'b' => nil, 'c' => 'c'})}.to raise_error RuntimeError, "Invalid. Self dependency"
	end
end
