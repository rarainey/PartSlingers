class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.decimal :price
      t.string :title
      t.text :description
      t.string :brand
      t.integer :wattage
      t.string :category
      t.boolean :for_sale
      t.integer :gpu_rank

      t.timestamps
    end
  end
end
