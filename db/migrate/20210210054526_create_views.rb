class CreateViews < ActiveRecord::Migration[6.0]
  def change
    create_table :views do |t|
      t.string :title,         null: false
      t.text :information,     null: false
      t.string :address,       null: false
      t.string :access,        null: false
      t.string :shop,          null: false
      t.string :opening_hours, null: false
      t.string :price,         null: false
      t.string :phone_number, null: false
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
