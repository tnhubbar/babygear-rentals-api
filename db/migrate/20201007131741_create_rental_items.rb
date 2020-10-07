class CreateRentalItems < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_items do |t|
      t.integer :family_id
      t.integer :age
      t.string :category
      t.string :item_name
      t.string :status

      t.timestamps
    end
  end
end
