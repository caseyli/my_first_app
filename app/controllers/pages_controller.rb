class PagesController < ApplicationController

	def contact
		if request.post?
			# Send the e-mail
			first_name = params['first_name']
			last_name = params['last_name']
			email = params['email']
			message = params['message']

			#UserMailer.contact_confirmation(email, first_name, last_name, message).deliver
			#AdminMailer.visitor_contact(...).deliver

			@success = true

			respond_to do |format|
				format.html 
				format.json { render json: @success }
			end
		end
	end

	def about
		
	end

	def interesting_facts
		
	end

	def home
		
	end

end
