class CreateTickeOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ticke_orders do |t|

      t.timestamps
    end
  end
end
