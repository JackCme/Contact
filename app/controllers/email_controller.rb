class EmailController < ApplicationController
	def email_form
	end

	def email_send
		email = params[:email]
		content = params[:content]
		title = params[:title]
		
		gmail = Gmail.connect("cochonjun@gmail.com","Chldnjswns1!")

		if gmail.logged_in?
			gmail.deliver do
				to email
				subject title
				text_part do
					body content
				end
			end
			gmail.logout
			@result = "Success!"
		else
			@result = "Failed to log in."
		end
	end
end
