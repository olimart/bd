module BookHelper
	include ActionView::Helpers::TagHelper

  def amzn_image_url(book)
  	"http://images.amazon.com/images/P/#{book.amazon_id}.01ZTZZZZZZ.jpg" if book.amazon_id.present?
  end

  def coverz(book)
  	if book.amazon_id.present?
  		image_tag(amzn_image_url(book))
    else
    	holder_tag '155x212', 'cover'
    	# "http://placehold.it/155x212&text=cover"
    end
  end

  def formatted_title(book)
  	book.volume.present? ? "##{book.volume} - #{book.title}" : book.title
  end

end
