class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.string :user
      t.text :body

      t.timestamps
    end
  end
end
