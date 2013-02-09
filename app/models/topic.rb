class Topic < ActiveRecord::Base
  attr_accessible :title, :event_id

	#belongs_to :event
	#has_many :proposals

	validates_presence_of :title
end
