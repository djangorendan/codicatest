# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: "codicatest@gmail.com", password: "codica", role: "superadmin")
Admin.create(email: "book_manager@gmail.com", password: "codica", role: "book_manager")
Admin.create(email: "group_manager@gmail.com", password: "codica", role: "group_manager")
