class DestroyAgendaMailer < ApplicationMailer
  def destroy_agenda_mail(team, agenda)
    @agenda = agenda
    @team_members = team.members
    @team = team
    mail to: @team_members.map(&:email), subject: "The agenda was destroyed."
  end
end
