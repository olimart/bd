puts 'creating series...'

20.times do |x|
  print '.'
  u = x + 1
  serie = Serie.create!(
    name: Faker::Lorem.words(4).join(' ')
  )
end

puts 'creating books...'

100.times do |x|
  print '.'
  u = x + 1
  book = Book.create!(
    title: Faker::Lorem.words(4).join(' '),
    serie_id: Serie.all.pluck(:id),
    editor: Faker::Name.first_name,
    author: Faker::Name.last_name,
    volume: u,
    read: [true, false].sample
  )
end

print "\n"