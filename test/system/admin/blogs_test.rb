require "application_system_test_case"

class Admin::BlogsTest < ApplicationSystemTestCase
  setup do
    @admin_blog = admin_blogs(:one)
  end

  test "visiting the index" do
    visit admin_blogs_url
    assert_selector "h1", text: "Admin/Blogs"
  end

  test "creating a Blog" do
    visit admin_blogs_url
    click_on "New Admin/Blog"

    fill_in "Title", with: @admin_blog.title
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "updating a Blog" do
    visit admin_blogs_url
    click_on "Edit", match: :first

    fill_in "Title", with: @admin_blog.title
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog" do
    visit admin_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end
