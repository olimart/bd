module BookHelper
	include ActionView::Helpers::TagHelper

  def amzn_image_url(book)
  	"http://images.amazon.com/images/P/#{book.amazon_id}.01ZTZZZZZZ.jpg" if book.amazon_id.present?
  end

  def amzn_book_url(isbn)
    "http://www.amazon.fr/gp/product/#{isbn}/?tag=#{ENV['AMZN_ASSOCIATE_TAG']}"
  end

  def coverz(book)
    uri = if book.cover_url.present?
      book.cover_url
  	elsif book.amazon_id.present?
  		amzn_image_url(book)
    else
      'cover.jpg'
    end
		image_tag(uri, class: 'img-responsive', size: '240x310')
  end

  def formatted_title(book)
  	book.tome.present? ? "##{book.tome} - #{book.title}" : book.title
  end
end
