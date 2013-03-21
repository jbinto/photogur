class Picture < ActiveRecord::Base
	attr_accessible :title, :artist, :url, :thumbnail_url
	validates :title, :presence => true
	validates :url, :presence => true
end