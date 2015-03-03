puts "Creating users..."
=begin
20.times do |x|
  puts "Creating user #{x}"
  name = Faker::Name.name
  User.create(username:Faker::Internet.user_name(name),
              name: name,
              website: Faker::Internet.url,
              bio: Faker::Lorem.paragraph,
              remote_avatar_url: Faker::Avatar.image )

end
=end
puts "Creating photos for each user..."

User.all.each do |user|
  15.times do |x|
    puts "Creating photo #{x} for user #{user.username}"

    Post.create(description: Faker::Lorem.sentences(rand(5)).join(" "),
                remote_photo_url: "http://lorempixel.com/612/612/",
                user: user)

  end


end
