module SessionsHelper

	################################
	# current_user returns 
	#    a User object from MongoDB
	################################

	# If not already set, retrieve user from MongoDB
	def current_user
		# Test if cookie exists
		if cookies[:user_id] 
			# Find user in DB only if @current_user does not exist
			@current_user ||= User.find(cookies[:user_id])
		else
			# Set to nil only if @current_user does not exist
			@current_user ||= nil
		end
	end

	# current_user Setter (similar to attr_writer)
	def current_user=(user)
		@current_user = user
	end

	################################
	# Helpers for logging in/logging out
	#   Use of a session rather than a cookie is commented out
	################################

	# LOG IN: set user ID cookie in user's browser
	def log_in(user)
		cookies.permanent[:user_id] = user.id
		#session[:userid] = user.id

		@current_user = user
	end

	# LOG OUT: remove cookie from user's browser
	def log_out
		cookies.delete(:user_id)
		#session[:userid] = nil
	end

	# true if user logged in
	def logged_in?
		current_user ? true : false
		#session[:userid]
	end
end
