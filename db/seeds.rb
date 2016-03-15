# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(name: 'hi', provider: 'local', uid: '1')
user_2 = User.create(name: 'Mr.2', provider: 'local', uid: '2')

post = Post.create(title: 'test...', body: 'body...', user_id: user.id)

comment = Comment.create(body: 'comment', user_id: user.id, post_id: post.id)
comment_2 = Comment.create(body: 'this is a reply', user_id: user_2.id, comment_id: comment.id, post_id: post.id)
