class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :comment
  has_many :replies, class_name: 'Comment', foreign_key: 'comment_id'

  validates_presence_of :body
end
