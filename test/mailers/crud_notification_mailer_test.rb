require 'test_helper'

class CrudNotificationMailerTest < ActionMailer::TestCase
  test "create_notif" do
    mail = CrudNotificationMailer.create_notif
    assert_equal "Create notif", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "update_notif" do
    mail = CrudNotificationMailer.update_notif
    assert_equal "Update notif", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "delete_notif" do
    mail = CrudNotificationMailer.delete_notif
    assert_equal "Delete notif", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
