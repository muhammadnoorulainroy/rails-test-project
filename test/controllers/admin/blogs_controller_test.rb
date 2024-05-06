require 'test_helper'

class Admin::BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_blog = admin_blogs(:one)
  end

  test "should get index" do
    get admin_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_blog_url
    assert_response :success
  end

  test "should create admin_blog" do
    assert_difference('Admin::Blog.count') do
      post admin_blogs_url, params: { admin_blog: { title: @admin_blog.title } }
    end

    assert_redirected_to admin_blog_url(Admin::Blog.last)
  end

  test "should show admin_blog" do
    get admin_blog_url(@admin_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_blog_url(@admin_blog)
    assert_response :success
  end

  test "should update admin_blog" do
    patch admin_blog_url(@admin_blog), params: { admin_blog: { title: @admin_blog.title } }
    assert_redirected_to admin_blog_url(@admin_blog)
  end

  test "should destroy admin_blog" do
    assert_difference('Admin::Blog.count', -1) do
      delete admin_blog_url(@admin_blog)
    end

    assert_redirected_to admin_blogs_url
  end
end
