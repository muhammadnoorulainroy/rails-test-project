json.extract! book, :id, :title, :string, :pages, :created_at, :updated_at
json.url book_url(book, format: :json)
