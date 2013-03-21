class AddThumbnailsToPictures < ActiveRecord::Migration
  def change
  	change_table :pictures do |t|
  		t.string :thumbnail_url 
  	end
  end
end
