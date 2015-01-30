# Start with a method that accepts a single string argument and returns a string (or a collection) which represents the ordered
# sequence of jobs (since each job is a single character).
#jobs are single character objects


require 'jobs_list'

describe Jobs_list do
	context "given an empty list of jobs" do 
		it "should return an empty sequence of jobs" do 
		expect(Jobs_list.empty_sequence('')).to eq ''		
		end
	end

	context "given a jobs list with one object" do 
		it "should return a sequence of jobs containing one object" do 
			expect(Jobs_list.containing_sequence("a =>")).to eq 'a'
		end
	end
end
