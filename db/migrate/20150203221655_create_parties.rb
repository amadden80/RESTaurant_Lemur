class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.integer :num_guests
      t.boolean :is_paid
      t.boolean :is_satisfied

      t.timestamps
    end
  end
end
