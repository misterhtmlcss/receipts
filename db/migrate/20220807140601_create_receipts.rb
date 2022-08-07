class CreateReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :receipts do |t|
      t.integer :user, default: 0, null: false
      t.string :business_name, null: false
      t.text :url, null: false

      t.date :upload_date, null: false
      t.timestamps
    end
  end
end
