# Preview all emails at http://localhost:3000/rails/mailers/crud_notification_mailer
class CrudNotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/crud_notification_mailer/create_notif
  def create_notif
    CrudNotificationMailer.create_notif
  end

  # Preview this email at http://localhost:3000/rails/mailers/crud_notification_mailer/update_notif
  def update_notif
    CrudNotificationMailer.update_notif
  end

  # Preview this email at http://localhost:3000/rails/mailers/crud_notification_mailer/delete_notif
  def delete_notif
    CrudNotificationMailer.delete_notif
  end

end
