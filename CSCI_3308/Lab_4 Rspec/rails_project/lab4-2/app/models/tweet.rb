class Tweet < ActiveRecord::Base

	attr_accessor :status
	attr_accessible :status
	belongs_to :zombie

end
