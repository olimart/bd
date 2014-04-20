# Book.missing_isbn.first do |book|
#     Rails.logger.info "**** Book #{book.id} found ****"
#     puts "**** Book #{book.id} found ****"
#     book.update!(title: 'test')
#     # res = Amazon::Ecs.item_search("#{book.serie.name} #{book.tome} #{book.title}", country: 'fr')
#     # #unless res.has_error? or res.items.empty?
#     #   item = res.items.first
#     #   #item_attributes = item.get_element('ItemAttributes')
#     #   logger.info "ASIN: #{item.get('ASIN')}"
#     #   book.update!(isbn: item.get('ASIN').to_s)
#     #   logger.info "Book with ID #{book.id} updated"
#     #  #end
# end

Book.missing_isbn.each do |book|
  #book = Book.find(3)
  puts "Book: #{book.id}"
  book.title = "test"
  book.save!
end