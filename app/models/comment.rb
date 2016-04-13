#encoding: utf-8

class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  scope :recent_comments, -> { order(created_at: :desc).limit(5) }
end
