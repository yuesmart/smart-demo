#encoding: utf-8

class Article < ActiveRecord::Base
  include TagFu
  include CommentFu
end
