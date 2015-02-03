class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :is_free
      t.references :party
      t.references :food

      t.timestamps
    end
  end
end
