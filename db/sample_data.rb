puts 'creating books...'

100.times do |x|
  print '.'
  u = x + 1
  book = Book.create!(
    title: Faker::Lorem.words(4).join(' '),
    serie: Faker::Lorem.words(3).join(' '),
    editor: Faker::Name.first_name,
    author: Faker::Name.last_name,
    volume: u,
    read: [true, false].sample
  )
end

print "\n"