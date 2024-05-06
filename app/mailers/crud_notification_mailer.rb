class CrudNotificationMailer < ApplicationMailer

  def create_notif
    @obj = params[:book]
    @obj_count = @obj.class.count
    mail to: "shahrukh.khan@devsinc.com", subject: "A new entry for #{@obj.class} has been created."
  end

  def send_email(book)
    @book = book
    mail to: "shahrukh.khan@devsinc.com", subject: "A new entry for #{@book.class} has been created."
  end

  def update_notif
    @greeting = "Hi"

    mail to: "to@example.org"
  end


  def delete_notif
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
