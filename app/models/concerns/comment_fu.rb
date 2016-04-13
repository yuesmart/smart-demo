#encoding: utf-8

module CommentFu
  extend ActiveSupport::Concern
  included do
    has_many :comments, as: :commentable
  end

  module ClassMethods

  end
end