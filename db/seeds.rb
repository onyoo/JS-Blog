# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(username: 'hi', password: 'hi')
user_2 = User.create(username: 'Mr.2', password: '2')

post = Post.create(title: 'test...', body: 'body...', user_id: user.id)

comment = Comment.create(body: 'comment', user_id: user.id)
comment_2 = Comment.create(body: 'comment #2', user_id: user_2.id, comment_id: comment.id)
