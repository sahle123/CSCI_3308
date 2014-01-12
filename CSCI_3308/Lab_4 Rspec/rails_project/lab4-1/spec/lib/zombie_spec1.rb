# zombie_spec1.rb
# Spec file that holds the tests for zombie1.rb
#
# Sahle A. Alturaigi
# Oct. 30th, 2013

require "spec_helper"
require "zombie1"

describe Zombie do

	it "is named Ash" do
		zombie = Zombie.new
		zombie.name.should == 'Ash'
	end
	
	it "has no brains" do
		zombie = Zombie.new
		zombie.brains.should < 1
	end

	it "is hungry" do
		zombie = Zombie.new
		zombie.hungry?.should == true #---
		zombie.hungry?.should be_true #  |---> These 3 pieces of code all do the same exact thing.
		zombie.should be_hungry       #---
	end

	# Examples of pending exception
	#it "is confused"
	#xit "is confused" do
	#end
	#it "is confused" do
	#	pending
	#end

end
