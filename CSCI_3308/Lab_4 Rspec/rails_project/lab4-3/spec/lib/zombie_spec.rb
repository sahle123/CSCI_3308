# zombie_spec.rb
#
# Sahle A. Alturaigi
# Oct. 30th, 2013

require 'spec_helper'
require 'zombie3'

describe Zombie do

	#it { subject.name.should == 'Ash' }
	its(:name) { should == 'Ash' }

	its(:brains) { should be_nil }
	its('tweets.size') { should == 2 }

end