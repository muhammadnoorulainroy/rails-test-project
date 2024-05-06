json.extract! admin_blog, :id, :title, :created_at, :updated_at
json.url admin_blog_url(admin_blog, format: :json)
