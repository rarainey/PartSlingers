class CreateBundles < ActiveRecord::Migration[7.0]
  def change
    create_table :bundles do |t|
      t.string :title
      t.text :description
      t.integer :gpu
      t.integer :cpu
      t.integer :motherboard
      t.integer :psu
      t.integer :ram
      t.integer :case
      t.integer :cooler
      t.integer :storage

      t.timestamps
    end
  end
end
