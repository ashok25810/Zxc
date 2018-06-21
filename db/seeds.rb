3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

puts "3 topics created"

10.times do |blog|

	Blog.create!(

		title: "My blog post #{blog}",
		body: "fghjk jhegjlkd kdgjlkjk kjdgkljl
		kdlglfkjl lkgjlkfjl ldjgkldfjhkl ldjgkldfjhkl  
		fdgjfhnfd fdhjhlf jfgjkhfjh jfhjhkj
		kfbjkgjfjh hjjfdjf fhjfhklglk kghkjflkh",
		topic_id: Topic.last.id

		)

end

puts "10 blog posts created"

5.times do |skills|
	Skill.create!(
		title: "my Skill #{skills}",
		percent_utilized: 15
		)
end

puts "5 Skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "my portfolio #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "sbdjjgfgn sjdgkjsjjh
		jbgkjndfjkngjfn bfgjkfjnfgj
		jfkghjdfhg hfjghjfgl kfgjghfj
		hgfhjg fgjhfdjkghlkdfk fklgkldfj" ,
		main_image: "http://via.placeholder.com/350x250",
		thumb_image: "http://via.placeholder.com/250x150"
		)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "my portfolio #{portfolio_item}",
		subtitle: "Angular",
		body: "sbdjjgfgn sjdgkjsjjh
		jbgkjndfjkngjfn bfgjkfjnfgj
		jfkghjdfhg hfjghjfgl kfgjghfj
		hgfhjg fgjhfdjkghlkdfk fklgkldfj" ,
		main_image: "http://via.placeholder.com/350x250",
		thumb_image: "http://via.placeholder.com/250x150"
		)
end



puts "9 portfolios created"