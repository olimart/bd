module BookHelper
	include ActionView::Helpers::TagHelper

  def amzn_image_url(book)
  	"http://images.amazon.com/images/P/#{book.amazon_id}.01ZTZZZZZZ.jpg" if book.amazon_id.present?
  end

  def amzn_book_url(isbn)
    "http://www.amazon.fr/gp/product/#{isbn}/?tag=#{ENV['AMZN_ASSOCIATE_TAG']}"
  end

  def coverz(book)
    if book.cover_url.present?
      image_tag(book.cover_url, class: 'img-responsive')
  	elsif book.amazon_id.present?
  		image_tag(amzn_image_url(book), class: 'img-responsive')
    else
      image_tag('cover.jpg', class: 'img-responsive')
    end
  end

  def formatted_title(book)
  	book.tome.present? ? "##{book.tome} - #{book.title}" : book.title
  end
end
