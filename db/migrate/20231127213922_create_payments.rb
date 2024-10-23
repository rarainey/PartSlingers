class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :card_num
      t.datetime :card_exp
      t.string :card_cvc
      t.string :card_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_num

      t.timestamps
    end
  end
end
