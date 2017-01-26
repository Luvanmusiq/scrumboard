class Story < ActiveRecord::Base
	#include HasGravatar
  	#attr_accessible :id
  	belongs_to :project
  	has_many :tasks
end
