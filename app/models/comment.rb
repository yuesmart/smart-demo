#encoding: utf-8

class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  scope :recent_comments, -> { limit(5) }
end
