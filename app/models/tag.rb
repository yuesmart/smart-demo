#encoding: utf-8

class Tag < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
end
