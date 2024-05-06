class SendEmailsJob < ApplicationJob
  queue_as :default

  def perform(book)
    CrudNotificationMailer.send_email(book).deliver_now
  end
end