class LatestBooksBySerie
  def call
    books.map { |array_of_books_grouped_by_serie| format_book(array_of_books_grouped_by_serie.first) }
  end

  private

    # [56, [#<Book id: 257, title: "Kah-aniel"...]]
    def books
      Book.includes(:serie).order('tome DESC').group_by { |s| s.serie_id }.map(&:last)
    end

    def format_book(book)
      {
        serie: Serie.find(book.serie_id).name,
        title: book.title,
        tome: book.tome,
        isbn: book.isbn,
        release_date: book.release_date,
        created_at: book.created_at,
        updated_at: book.updated_at
      }
    end
end
