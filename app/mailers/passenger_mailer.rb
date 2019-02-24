class PassengerMailer < ApplicationMailer
	default from: "example@example.com"

	def thanking_email
		@user = params[:user]
		mail(to: @user.email, subject: "thanks for buying a thicket!")
	end
end
