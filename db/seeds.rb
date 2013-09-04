# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

moderator_role = Role.where(name: "Moderator").first_or_create

category = Category.new(name: "cats")

moderator_user = User.where(email: "chuck@devchat.tv").first_or_create
moderator_user.password = "password"

moderator_user.assign_role_on(moderator_role, category)
moderator_user.save
