class EmailController < ApplicationController
	def email_form
	end

	def email_send
		@email = params[:email]
		@content = params[:content]
	end
end
