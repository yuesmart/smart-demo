#encoding: utf-8

module TagFu
  extend ActiveSupport::Concern
  included do
    attr_accessor :tag

    has_many :taggings, as: :taggable, dependent: :destroy
    has_many :tags, through: :taggings, dependent: :destroy

    after_save :save_tags

    def save_tags
      tags.map { |tag| tag.destroy}

      (tag.is_a?(Array) ? tag : tag.to_s.split(',')).each do |_tag|
        self.tags.create name: _tag
      end
    end
  end

  module ClassMethods

  end
end