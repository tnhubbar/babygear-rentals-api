class CreateFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
      t.string :name
      t.string :location
      t.string :contact_number 

      t.timestamps
    end
  end
end
