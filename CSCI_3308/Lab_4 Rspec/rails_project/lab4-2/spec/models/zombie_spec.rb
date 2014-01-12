# zombie_spec2.rb
#
# Sahle A. Alturaigi
# Oct. 30th, 2013
#
# Apparently line 37 where I call .save is deprecated. I should use attr_writer instead.

require 'spec_helper'

describe Zombie do

	it 'is invalid without a name' do
		zombie = Zombie.new
		zombie.should_not be_valid
	end

	it "has a name that matches 'Ash Clone'" do
		zombie = Zombie.new(name: "Ash Clone 1")
		zombie.name.should match(/Ash Clone \d/)
	end
	
	it 'include tweets' do
		tweet1 = Tweet.new(status: 'Uuuuuuugghhhh')
		tweet2 = Tweet.new(status: 'Mmmmblllarrrggghh')
		zombie = Zombie.new(name: 'Ash', tweets: [tweet1, tweet2])
		zombie.tweets.should include(tweet1)
		zombie.tweets.should include(tweet2)
	end

	it 'starts with two weapons' do
		zombie = Zombie.new(name: 'Ash')
		zombie.should have(2).weapons
	end

	it 'changes the number of Zombies' do
		zombie = Zombie.new(name: 'Ash')
		#expect { zombie.save }.to change { Zombie.count }.by(1)
		expect { zombie.save }.to change { Zombie.count }.from(0).to(1)
	end

	it 'raises an error if saved without a name' do
		zombie = Zombie.new
		expect { zombie.save! }.to raise_error(ActiveRecord::RecordInvalid)
	end

	it 'responds to name' do # :^)
		#zombie = Zombie.new
		#zombie.should respond_to(:name)
		
		#subject.should respond_to(:name)
		should respond_to(:name)
	end

	it { should respond_to(:name) } # This is identical to :^)

end
