  puts 'Admin User: '
  admin = Admin.create(email: 'admin@admin.com', password: 123123123)
  puts 'Email: ' + admin.email
  puts 'Pass: 123123123'
