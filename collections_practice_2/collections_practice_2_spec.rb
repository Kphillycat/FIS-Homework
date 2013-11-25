require './collections_practice_2'

describe "#starts_with_r" do
	it "should return true if every element in given array starts with r" do
		expect(starts_with_r(["ruby", "rspec", "rails"])).to eq(true)
	end

	it "should return false if every element in given array does not start with r" do
		expect(starts_with_r(["uby", "rspec", "rails"])).to eq(false)
	end
end

describe "#create_a_array" do
	it "should return an array with all the elements of a given array that contain a" do
		expect(create_a_array(["earth", "fire", "wind", "water", "heart"])).to eq(["earth","water","heart"])
	end
end

describe "#begins_with_wa" do
	it "should return the first element of the given array that begins with wa" do
		expect(begins_with_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq("wall")
	end
end

describe "#all_begins_with_wa" do
	it "should return array of words of given array that begin with wa" do
		expect(all_begins_with_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq(["wall","wacky"])
	end
end

describe "#keep_only_strings" do
	it "should return array of only strings" do
		expect(keep_only_strings([1,"2",3,"cat","4",5.5,"dog"])).to eq(["2","cat","4","dog"])
	end
end

