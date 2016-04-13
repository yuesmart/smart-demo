class AddDigestToPost < ActiveRecord::Migration
  def change
    add_column :posts, :digest, :string
    add_column :posts, :cover, :string
  end
end
