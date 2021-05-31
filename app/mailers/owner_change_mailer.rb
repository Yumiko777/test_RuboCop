class OwnerChangeMailer < ApplicationMailer
  def owner_change_mail(email, team)
    @team = team
    @email = email
    mail to: @email, subject: "Attention TeamLeader Changed Now"
  end
end
