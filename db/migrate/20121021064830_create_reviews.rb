class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.string :text
      t.integer :account_id
      t.integer :product_id

      t.timestamps
    end
  end
end
