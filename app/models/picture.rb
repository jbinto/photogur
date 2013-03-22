class Picture < ActiveRecord::Base
	attr_accessible :title, 
		:artist, 
		:url, 
		:thumbnail_url,
		:copyrighted

	validates :title, :presence => true
	validates :url, 
		:presence => true,
		:format => { 
			:with => /^https?:\/\/[^\s]+$/i,
			:message => "Please enter a valid URL." 
		}

	validates :thumbnail_url, 
		:presence => true,
		:format => { 
			:with => /^https?:\/\/[^\s]+$/i,
			:message => "Please enter a valid URL." 
		}
end