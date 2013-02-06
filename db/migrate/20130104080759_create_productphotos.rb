class CreateProductphotos < ActiveRecord::Migration
  def change
    create_table :productphotos do |t|
      t.integer :product_id
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
