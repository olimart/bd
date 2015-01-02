json.array!(@books) do |book|
  json.extract! book, :title, :tome, :author
  json.url book_url(book, format: :json)
end
