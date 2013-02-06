class CreateProductclasses < ActiveRecord::Migration
  def change
    create_table :productclasses do |t|
      t.string :name

      t.timestamps
    end
  end
end
