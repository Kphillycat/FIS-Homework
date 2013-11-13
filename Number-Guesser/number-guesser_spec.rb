require './number-guesser.rb'

describe "Number Guesser" do

it "should output correct" do
    expect(number_guesser(4, 4)).to eq("WOOHOO!! CORRECT!")
end

it "should output wrong" do
    expect(number_guesser(9, 4)).to eq("Sorry, you didn't guess correctly ::sad trombone::")
end

end