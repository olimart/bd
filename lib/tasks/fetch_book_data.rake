require 'amazon/ecs'

namespace :book do

  desc 'Update attributes from Amazon'
  task :fetch_data_from_amazon => :environment do
    Book.missing_isbn.each do |book|
      puts "**** Book #{book.id} found ****"
	    res = Amazon::Ecs.item_search("#{book.serie.name} #{book.tome} #{book.title}", country: 'fr')
	    unless res.has_error? or res.items.empty?
	      item = res.items.first
	      #item_attributes = item.get_element('ItemAttributes')
	      #logger.info "ASIN: #{item.get('ASIN')}"
	      book.update!(isbn: item.get('ASIN').to_s)
	      puts "**** Book ##{book.id} updated with ASIN #{item.get('ASIN')} ****"
	    end
	    sleep 1
    end
  end

end