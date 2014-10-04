class SessionsController < ApplicationController
	def new
		flash.clear
	end

	def create
		flash.clear
		
		# Best practice is to say "Email/password combination not found."
		begin
			user = User.find_by({email: params[:session][:email]})
		rescue
			flash[:error] = 'Email not found.'			
		end

		if user && user.authenticate(params[:session][:password])
			log_in(user)
			redirect_to root_path
		else
			flash[:error] ||= 'Password incorrect.'
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_path
	end
end