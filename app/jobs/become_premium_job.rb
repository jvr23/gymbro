class BecomePremiumJob < ApplicationJob
  queue_as :mails

  def perform(mail)
    UserMailer.oneWeekUser(mail).deliver_later
  end
end
