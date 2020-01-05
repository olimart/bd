module ReleaseHelper
  def tome_and_title(book)
    [
      book[:title],
      I18n.t('book.tome_number', tome: book[:tome])
    ].reject(&:blank?).join(' - ')
  end
end
