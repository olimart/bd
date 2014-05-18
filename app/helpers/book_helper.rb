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
      image_tag(book.cover_url, size: '230x250')
  	elsif book.amazon_id.present?
  		image_tag(amzn_image_url(book), size: '230x250')
    else
      image_tag('cover.jpg', size: '230x250')
    	#holder_tag '155x212', 'cover'
    	# "http://placehold.it/155x212&text=cover"
    end
  end

  def formatted_title(book)
  	book.tome.present? ? "##{book.tome} - #{book.title}" : book.title
  end

end
