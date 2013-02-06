class CreateOrderproductphotos < ActiveRecord::Migration
  def change
    create_table :orderproductphotos do |t|
      t.string :image

      t.timestamps
    end
  end
end
