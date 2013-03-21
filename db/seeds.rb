# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.create!({
	title: "Golden Gate Bridge, San Francisco",
	artist: "Jesse Buchanan",
	url: "http://farm9.staticflickr.com/8522/8520442702_0cf0dc7d99_k.jpg"
})

Picture.create!({
	title: "Music Garden, Toronto",
	artist: "Jesse Buchanan",
	url: "http://farm9.staticflickr.com/8195/8129162807_de5cb01944_k.jpg"
})

Picture.create!({
	title: "CNE 2012, Toronto",
	artist: "Jesse Buchanan",
	url: "http://farm9.staticflickr.com/8463/8128483522_d71c1eff1f_k.jpg"
})

Picture.create!({
	title: "Canada Day 2012, Ottawa",
	artist: "Jesse Buchanan",
	url: "http://farm9.staticflickr.com/8325/8128481164_f9e00ef81c_k.jpg"
})

Picture.create!({
	title: "Scott St and Townline Rd, Niagara-on-the-Lake",
	artist: "Jesse Buchanan",
	url: "http://farm9.staticflickr.com/8325/8128484370_130bd459df_k.jpg"
})

Picture.create!({
	title: "East Don River Trail, Toronto",
	artist: "Jesse Buchanan",
	url: "http://farm9.staticflickr.com/8054/8128485418_916cbc8b0c_k.jpg"
})