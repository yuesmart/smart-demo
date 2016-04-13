#encoding: utf-8

class Post < ActiveRecord::Base
  include TagFu
  include CommentFu
end
