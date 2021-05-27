# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    Cat.delete_all

cat1 = Cat.create(id: 1, name: 'Whiskers', birth_date: '2020/01/03', color: 'Gold', sex: 'M')
cat2 = Cat.create(id: 2, name: 'Sennnacy', birth_date: '2020/01/03', color: 'Gold', sex: 'M')


end
