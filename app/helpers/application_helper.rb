module ApplicationHelper

	def login_helper
	if current_user.is_a?(User) 
		(link_to "register", new_user_registration_path)+
	   	"<br>".html_safe +
	    (link_to "Login", new_user_session_path)
     	 
    else 
	   	 link_to "Logout", destroy_user_session_path, method: :delete
    end 
	end

	def source_helper(layout)
		if session[:source]
    	greeting = "Thanks for visiting me from #{session[:source]}, you are on #{layout}"
    	content_tag(:p, greeting, class: "source-greeting")
    	end 
	end
end
