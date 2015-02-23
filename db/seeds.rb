puts '--------------'
puts '**Admin**'
puts '--------------'
admin = Admin.create(email: 'admin@admin.com', password: 123123123)
puts 'Email: ' + admin.email
puts 'Pass: 123123123'

puts '--------------'
puts '**User**'
puts '--------------'
user = User.create(email: 'user@user.com', password: 123123123)
puts 'Email: ' + user.email
puts 'Pass: 123123123'
