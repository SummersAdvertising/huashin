class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :descript
      t.boolean :frontshow
      t.string :image

      t.timestamps
    end
  end
end
