$stdout.write("rails db:seed started.\n")
admin = Admin.find_or_create_by(first_name: 'admin', last_name: 'admin', email: 'admin@localhost')
admin.password = 'admin'
p admin if admin.save

60.times do |i|
  u = [Manager, Developer].sample.new
  u.email = "email#{i}@mail.gen"
  u.first_name = "FN#{i}"
  u.last_name = "LN#{i}"
  u.password = "#{i}"
  p u if u.save
end
$stdout.write("rails db:seed finished.\n")
