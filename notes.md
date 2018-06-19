App plan

1. Make the blog part 
	Needs a homepage  test: 
	needs users
	users have_many friends 
	friends can have_many users, but really, just have one. 
	users have posts
	posts have comments, users have comments through posts, 
	friends have comments
	comments have hearts
	
2. create sessions
	create signup
	create login
	create logout


3.	create navbar with these things 
		to create navbar, use gem material_design_lite-sass
		Run ‘bundle install’.

		Add ‘//= require material’ to your app/assets/javascripts/application.js.

		Add ‘@import “material”;’ to your app/assets/stylesheets/application.scss.


3. Or:  gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '>= 3.2'


4. How to start: I'm a user, someone just died, and I set up a page. Home page-- has logins. I lost someone I love.  I'm a friend. They get different authorizations. R vs R/W/E/D
	I sign up, login, name my friends. 
	Form also includes date of death, who it was, their email or text. 
	start with user model 

